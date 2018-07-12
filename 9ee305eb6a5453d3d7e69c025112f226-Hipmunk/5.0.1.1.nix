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
          version = "5.0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2008-2009 Felipe A. Lessa";
        maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
        author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A Haskell binding for Chipmunk.";
        description = "Chipmunk is a fast, simple, portable, 2D physics engine\n(<http://wiki.slembcke.net/main/published/Chipmunk>).  This\npackage contains a prerelease Chipmunk 5.0 source\nand Haskell bindings to all of its functions. It is\ncompletely self-contained.  Please see\n<http://hackage.haskell.org/package/HipmunkPlayground>\nfor a demonstration of this library.\n\nNew in version 5.0.1:\n\n* Updated dependencies for GHC 6.12.  Thanks, dons.\n\nNew in version 5.0.0:\n\n* Updated for a prerelease of Chipmunk 5.0 from subversion\nrevision 192.  Besides bugfixes this new version brings\nthe long awaited new constraints type, doubling the\nnumber of different joints from four to nine.\n\n* Tighter dependencies following the versioning policies.\n\nLicensed under the MIT license (like Chipmunk itself).";
        buildType = "Simple";
      };
      components = {
        "Hipmunk" = {
          depends  = if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
            ]
            else [ hsPkgs.base ];
          libs = [ pkgs.m ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }