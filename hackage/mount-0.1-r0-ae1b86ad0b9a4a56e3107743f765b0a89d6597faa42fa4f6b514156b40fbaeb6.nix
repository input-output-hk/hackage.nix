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
      specVersion = "1.2";
      identifier = { name = "mount"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tensor5@gmail.com";
      author = "Nicola Squartini";
      homepage = "";
      url = "";
      synopsis = "Mounts and umounts filesystems";
      description = "This module provides an interface to the system mount and umount functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }