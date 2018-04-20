{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HipmunkPlayground";
          version = "5.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2008 Felipe A. Lessa";
        maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
        author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A playground for testing Hipmunk.";
        description = "This is a simple OpenGL program that allows you to see\nsome of Hipmunk's functions in action.\n\nNew in version 5.0.0:\n\n* Updated for Hipmunk 5.0.0. Yay!\n\n* Add a small car using @SimpleMotor@ (not the best way\nof creating a car, but it works a demo).\n\nLicensed under the MIT license (like Hipmunk itself).";
        buildType = "Simple";
      };
      components = {
        exes = {
          HipmunkPlayground = {
            depends  = if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.containers
                hsPkgs.Hipmunk
                hsPkgs.OpenGL
                hsPkgs.GLFW
              ]
              else [
                hsPkgs.base
                hsPkgs.Hipmunk
                hsPkgs.OpenGL
                hsPkgs.GLFW
              ];
          };
        };
      };
    }