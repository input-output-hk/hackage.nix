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
      identifier = {
        name = "safe-coloured-text-layout-gen";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/safe-coloured-text#readme";
      url = "";
      synopsis = "";
      description = "Generators for types in safe-coloured-text-layout";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."safe-coloured-text-gen" or (errorHandler.buildDepError "safe-coloured-text-gen"))
          (hsPkgs."safe-coloured-text-layout" or (errorHandler.buildDepError "safe-coloured-text-layout"))
        ];
        buildable = true;
      };
      tests = {
        "safe-coloured-text-layout-gen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity-sydtest" or (errorHandler.buildDepError "genvalidity-sydtest"))
            (hsPkgs."safe-coloured-text" or (errorHandler.buildDepError "safe-coloured-text"))
            (hsPkgs."safe-coloured-text-gen" or (errorHandler.buildDepError "safe-coloured-text-gen"))
            (hsPkgs."safe-coloured-text-layout" or (errorHandler.buildDepError "safe-coloured-text-layout"))
            (hsPkgs."safe-coloured-text-layout-gen" or (errorHandler.buildDepError "safe-coloured-text-layout-gen"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.sydtest-discover.components.exes.sydtest-discover or (pkgs.buildPackages.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
    };
  }