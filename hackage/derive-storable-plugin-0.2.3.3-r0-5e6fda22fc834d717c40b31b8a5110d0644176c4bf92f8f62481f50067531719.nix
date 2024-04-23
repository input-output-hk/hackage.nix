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
    flags = { sumtypes = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "derive-storable-plugin"; version = "0.2.3.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "mateusz.p.kloczko@gmail.com";
      author = "Mateusz Kłoczko";
      homepage = "https://www.github.com/mkloczko/derive-storable-plugin/";
      url = "";
      synopsis = "GHC core plugin supporting the derive-storable package.";
      description = "The package helps derive-storable package in forcing compile time evaluation of\nsizes, alignments and offsets.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghci" or (errorHandler.buildDepError "ghci"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
        ];
        buildable = true;
      };
      tests = {
        "c_alignment" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or (errorHandler.buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghci" or (errorHandler.buildDepError "ghci"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "plugin-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or (errorHandler.buildDepError "derive-storable-plugin"))
          ];
          buildable = true;
        };
      };
    };
  }