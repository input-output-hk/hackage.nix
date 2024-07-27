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
      identifier = { name = "looper"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019-2022 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/looper#readme";
      url = "";
      synopsis = "";
      description = "Configure and run recurring jobs indefinitely";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."autodocodec" or (errorHandler.buildDepError "autodocodec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "looper-test" = {
          depends = [
            (hsPkgs."autodocodec-yaml" or (errorHandler.buildDepError "autodocodec-yaml"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."looper" or (errorHandler.buildDepError "looper"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.sydtest-discover.components.exes.sydtest-discover or (pkgs.pkgsBuildBuild.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
    };
  }