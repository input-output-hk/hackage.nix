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
      specVersion = "1.10";
      identifier = { name = "wigner-ville-accelerate"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Rinat Stryungis";
      maintainer = "Rinat Stryungis <lazybonesxp@gmail.com>";
      author = "Rinat Stryungis";
      homepage = "https://github.com/Haskell-mouse/wigner-ville-accelerate";
      url = "";
      synopsis = "Wigner-ville transform using the Accelerate library";
      description = "Wigner-ville and Pseudo wigner-ville transform algorithm, inspired by \"Time-frequency toolbox\"\nand adapted to use with the Accelerate library. If you want to use accelerated backends,\nlike Native or PTX, build accelerate-fft package with corresponding flags.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          (hsPkgs."accelerate-fft" or (errorHandler.buildDepError "accelerate-fft"))
          ];
        buildable = true;
        };
      tests = {
        "wigner-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wigner" or (errorHandler.buildDepError "wigner"))
            ];
          buildable = true;
          };
        };
      };
    }