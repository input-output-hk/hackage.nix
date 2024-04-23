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
      identifier = { name = "fedora-dists"; version = "1.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2018 Jens Petersen";
      maintainer = "petersen@fedoraproject.org";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/fedora-dists";
      url = "";
      synopsis = "Library for Fedora distribution versions";
      description = "This library provides the Dist datatype and various associated\nmetadata functions for Red Hat distributions (Fedora, EPEL, RHEL)\nneeded for packaging development and building.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }