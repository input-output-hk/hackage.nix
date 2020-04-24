{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "v4l2-examples"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/hsv4l2";
      url = "";
      synopsis = "video for linux two examples";
      description = "This package contains examples using the v4l2 package:\n\n* v4l2-capture - dumps PPM frames from a video device to stdout:\n\n@\$ v4l2-capture /dev/video0 > out.ppm@\n\n* v4l2-histogram - shows RGB histogram overlaid on mirror image, using OpenGL/GLUT for display.\n\n@\$ v4l2-histogram /dev/video0@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "v4l2-capture" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."v4l2" or ((hsPkgs.pkgs-errors).buildDepError "v4l2"))
            ];
          buildable = true;
          };
        "v4l2-histogram" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
            (hsPkgs."v4l2" or ((hsPkgs.pkgs-errors).buildDepError "v4l2"))
            ];
          buildable = true;
          };
        };
      };
    }