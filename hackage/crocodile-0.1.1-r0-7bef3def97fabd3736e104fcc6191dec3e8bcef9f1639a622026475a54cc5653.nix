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
      specVersion = "1.6";
      identifier = { name = "crocodile"; version = "0.1.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "tomhammersley@gmail.com";
      author = "Tom Hammersley";
      homepage = "https://github.com/TomHammersley/HaskellRenderer/";
      url = "";
      synopsis = "An offline renderer supporting ray tracing and photon mapping";
      description = "This is an offline renderer written purely in Haskell, supporting ray tracing and photon mapping with an irradiance cache";
      buildType = "Simple";
    };
    components = {
      exes = {
        "crocodile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."heap" or (errorHandler.buildDepError "heap"))
            (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }