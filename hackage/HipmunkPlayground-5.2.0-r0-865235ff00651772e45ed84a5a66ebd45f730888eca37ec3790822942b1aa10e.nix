{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HipmunkPlayground";
        version = "5.2.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A playground for testing Hipmunk.";
      description = "This is a simple OpenGL program that allows you to see\nsome of Hipmunk's functions in action.\n\nNew in version 5.2.0:\n\n* Updated to Hipmunk 5.2.0 (which uses StateVar).\n\n* Updated to OpenGL 2.4.0.1.\n\n* Updated to GLFW 0.4.2.\n\nLicensed under the MIT license (like Hipmunk itself).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "HipmunkPlayground" = {
          depends  = if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.Hipmunk)
              (hsPkgs.GLFW)
              (hsPkgs.OpenGL)
              (hsPkgs.StateVar)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.Hipmunk)
              (hsPkgs.GLFW)
              (hsPkgs.OpenGL)
              (hsPkgs.StateVar)
            ];
        };
      };
    };
  }