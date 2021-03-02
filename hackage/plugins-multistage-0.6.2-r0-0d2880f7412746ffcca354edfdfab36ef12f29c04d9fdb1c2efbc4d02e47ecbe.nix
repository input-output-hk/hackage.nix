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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "plugins-multistage"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2014, Anders Persson";
      maintainer = "Anders Persson <anders.cj.persson@gmail.com>";
      author = "Anders Persson <anders.cj.persson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Dynamic linking for embedded DSLs with staged compilation";
      description = "Dynamic compilation, linking and loading of functions in\nstaged languages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0.0") (hsPkgs."ghci" or (errorHandler.buildDepError "ghci"));
        buildable = true;
        };
      tests = {
        "regression" = {
          depends = [
            (hsPkgs."plugins-multistage" or (errorHandler.buildDepError "plugins-multistage"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }