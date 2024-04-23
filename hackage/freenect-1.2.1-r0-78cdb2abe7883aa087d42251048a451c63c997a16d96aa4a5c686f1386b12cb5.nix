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
      specVersion = "1.6";
      identifier = { name = "freenect"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done, Kevin Conley, Chris Müller";
      homepage = "https://github.com/chrisdone/freenect";
      url = "";
      synopsis = "Interface to the Kinect device.";
      description = "Interface to the Kinect device. Currently supports\ndepth perception. (No video or audio.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."freenect" or (errorHandler.sysDepError "freenect"))
          (pkgs."freenect_sync" or (errorHandler.sysDepError "freenect_sync"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libfreenect" or (errorHandler.pkgConfDepError "libfreenect"))
        ];
        buildable = true;
      };
    };
  }