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
          name = "Hipmunk";
          version = "0.2.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2008 Felipe A. Lessa";
        maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
        author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A Haskell binding for Chipmunk.";
        description = "Chipmunk is a fast, simple, portable, 2D physics engine\n(<http://wiki.slembcke.net/main/published/Chipmunk>).  This\npackage contains the Chipmunk 4.1.0 source (see\n<http://www.slembcke.net/forums/viewtopic.php?f=4&t=276>)\nand Haskell bindings to all of its functions. It is\ncompletely self-contained.\n\nLicensed under the MIT license (like Chipmunk itself).";
        buildType = "Simple";
      };
      components = {
        Hipmunk = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optionals _flags.small_base [
            hsPkgs.array
            hsPkgs.containers
          ];
          libs = [ pkgs.m ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }