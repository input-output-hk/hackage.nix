{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "freenect"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/freenect";
      url = "";
      synopsis = "Interface to the Kinect device.";
      description = "Interface to the Kinect device. Currently supports\ndepth perception. (No video or audio.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = [
          (pkgs."freenect" or ((hsPkgs.pkgs-errors).sysDepError "freenect"))
          (pkgs."freenect_sync" or ((hsPkgs.pkgs-errors).sysDepError "freenect_sync"))
          ];
        buildable = true;
        };
      };
    }