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
      identifier = { name = "fedora-dists"; version = "2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2018-2022 Jens Petersen";
      maintainer = "petersen@fedoraproject.org";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/fedora-dists";
      url = "";
      synopsis = "Library for Fedora distribution versions";
      description = "This library provides the Dist datatype and various associated\nmetadata functions for Red Hat distributions (Fedora, EPEL, RHEL)\nneeded for packaging development and building. It uses current\nreleasedata from Fedora PDC. Also provides a Branch type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pdc" or (errorHandler.buildDepError "pdc"))
          (hsPkgs."cached-json-file" or (errorHandler.buildDepError "cached-json-file"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }