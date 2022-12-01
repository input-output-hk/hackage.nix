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
      identifier = { name = "composite-binary"; version = "0.8.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc., 2020-2021 Vital Biosciences";
      maintainer = "oss@vitalbio.com";
      author = "Confer Health, Inc";
      homepage = "https://github.com/composite-hs/composite#readme";
      url = "";
      synopsis = "Orphan binary instances.";
      description = "Binary instance for (:->) and Record.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          ];
        buildable = true;
        };
      };
    }