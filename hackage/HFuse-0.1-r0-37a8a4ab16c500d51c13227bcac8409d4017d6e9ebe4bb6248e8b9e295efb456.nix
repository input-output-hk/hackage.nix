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
      identifier = { name = "HFuse"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jérémy Bobbio <jeremy.bobbio@etu.upmc.fr>";
      author = "Jérémy Bobbio";
      homepage = "http://darcs.haskell.org/hfuse";
      url = "";
      synopsis = "HFuse is a binding for the Linux FUSE library";
      description = "HFuse is a binding to the Linux C library, FUSE ('Filesystems in Userspace');\nFUSE allows you to construct interesting filesystems which can be used in many ways,\nsuch as a filesystem in which the files are Wikipedia files, or SSHFS where one mounts remote\ndirectories over SSH, or FlickrFS which represents your Flickr account as directories and files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        libs = [ (pkgs."fuse" or (errorHandler.sysDepError "fuse")) ];
        buildable = true;
      };
    };
  }