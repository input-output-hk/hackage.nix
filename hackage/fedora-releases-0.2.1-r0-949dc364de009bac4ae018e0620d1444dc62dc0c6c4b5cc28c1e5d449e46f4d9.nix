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
      specVersion = "1.18";
      identifier = { name = "fedora-releases"; version = "0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "2018-2022,2024-2025 Jens Petersen";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Jens Petersen <petersen@fedoraproject.org>";
      homepage = "https://github.com/juhp/fedora-releases";
      url = "";
      synopsis = "Library for Fedora release versions";
      description = "This library provides the Branch and Release data types\nand various associated metadata functions for\nFedora releases (Fedora and EPEL) needed for\npackaging development and building.\nIt caches current release data from Fedora Bodhi.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bodhi" or (errorHandler.buildDepError "bodhi"))
          (hsPkgs."cached-json-file" or (errorHandler.buildDepError "cached-json-file"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ];
        buildable = true;
      };
    };
  }