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
    flags = { gui = false; static = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "GenI"; version = "0.20"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "geni-users@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://projects.haskell.org/GenI";
      url = "";
      synopsis = "A natural language generator (specifically, an FB-LTAG surface realiser)";
      description = "A natural language generator (specifically, an FB-LTAG surface realiser)";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          (hsPkgs."test-framework-quickcheck" or (errorHandler.buildDepError "test-framework-quickcheck"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          ];
        buildable = true;
        };
      exes = {
        "geni" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ (pkgs.lib).optional (flags.gui) (hsPkgs."wx" or (errorHandler.buildDepError "wx"));
          buildable = true;
          };
        };
      };
    }