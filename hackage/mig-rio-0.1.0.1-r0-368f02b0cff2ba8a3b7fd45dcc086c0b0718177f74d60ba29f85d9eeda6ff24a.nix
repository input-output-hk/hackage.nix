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
      identifier = { name = "mig-rio"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023 Anton Kholomiov";
      maintainer = "anton.kholomiov@gmail.com";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/mig#readme";
      url = "";
      synopsis = "Utils to use RIO with mig library";
      description = "Utils to use RIO with mig library. Provides instance for HasServer class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mig-server" or (errorHandler.buildDepError "mig-server"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
        ];
        buildable = true;
      };
    };
  }