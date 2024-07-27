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
      specVersion = "1.24";
      identifier = { name = "tonatona"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto, Dennis Gosnell";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "meta application framework";
      description = "Tonatona is a **meta** application framework. It handles lots of boring tasks that are needed for real-world development such as reading in values defined in environment variables, setting up logging, sending emails, accessing databases, etc.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
        (hsPkgs.pkgsBuildBuild.rio or (pkgs.pkgsBuildBuild.rio or (errorHandler.setupDepError "rio")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."tonaparser" or (errorHandler.buildDepError "tonaparser"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."tonaparser" or (errorHandler.buildDepError "tonaparser"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."tonaparser" or (errorHandler.buildDepError "tonaparser"))
            (hsPkgs."tonatona" or (errorHandler.buildDepError "tonatona"))
          ];
          buildable = true;
        };
      };
    };
  }