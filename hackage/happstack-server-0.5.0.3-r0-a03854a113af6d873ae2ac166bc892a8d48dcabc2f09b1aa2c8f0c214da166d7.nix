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
      identifier = { name = "happstack-server"; version = "0.5.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Web related tools and services.";
      description = "Web framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
          (hsPkgs."happstack-util" or (errorHandler.buildDepError "happstack-util"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."sendfile" or (errorHandler.buildDepError "sendfile"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.base4) [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]) ++ (pkgs.lib).optional (flags.tests) (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"));
        buildable = true;
        };
      exes = {
        "happstack-server-tests" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = if flags.tests then true else false;
          };
        };
      };
    }