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
      identifier = { name = "fedora-dists"; version = "2.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2018-2022 Jens Petersen";
      maintainer = "petersen@fedoraproject.org";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/fedora-dists";
      url = "";
      synopsis = "Library for Fedora distribution versions";
      description = "This library provides the Dist and Branch datatypes\nand various associated metadata functions for\nRed Hat distributions (Fedora, EPEL, RHEL) needed for\npackaging development and building.\nIt uses current release data from Fedora PDC.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."pdc" or (errorHandler.buildDepError "pdc"))
          (hsPkgs."cached-json-file" or (errorHandler.buildDepError "cached-json-file"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }