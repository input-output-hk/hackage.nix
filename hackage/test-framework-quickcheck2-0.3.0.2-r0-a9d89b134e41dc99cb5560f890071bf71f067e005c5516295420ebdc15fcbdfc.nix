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
    flags = { base4 = true; base3 = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "test-framework-quickcheck2";
        version = "0.3.0.2";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Haskell Libraries <libraries@haskell.org>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "https://batterseapower.github.io/test-framework/";
      url = "";
      synopsis = "QuickCheck2 support for the test-framework package.";
      description = "QuickCheck2 support for the test-framework package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          ] ++ (if flags.base3
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ]
          else (pkgs.lib).optionals (flags.base4) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ]);
        buildable = true;
        };
      };
    }