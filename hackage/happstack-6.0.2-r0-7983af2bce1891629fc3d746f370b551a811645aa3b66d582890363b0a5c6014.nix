{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { base4 = true; tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack"; version = "6.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "The haskell application server stack + code generation";
      description = "The haskell application server stack";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
          (hsPkgs."happstack-ixset" or (errorHandler.buildDepError "happstack-ixset"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
          (hsPkgs."happstack-util" or (errorHandler.buildDepError "happstack-util"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
        ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
          ]);
        buildable = true;
      };
      exes = {
        "happstack" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "happstack-tests" = {
          depends = pkgs.lib.optional (flags.tests) (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"));
          buildable = if flags.tests then true else false;
        };
      };
    };
  }