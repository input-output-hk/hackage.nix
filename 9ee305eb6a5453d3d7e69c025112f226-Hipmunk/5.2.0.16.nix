{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
      debug = false;
      system-chipmunk = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Hipmunk";
          version = "5.2.0.16";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2008-2014 Felipe A. Lessa";
        maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>, Sönke Hahn <shahn@joyridelabs.de>";
        author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
        homepage = "https://github.com/meteficha/Hipmunk";
        url = "";
        synopsis = "A Haskell binding for Chipmunk.";
        description = "Chipmunk is a fast, simple, portable, 2D physics engine\n(<http://code.google.com/p/chipmunk-physics/>).  This\npackage the Chipmunk 5.3.4 source and Haskell bindings to\nall of its functions. It is completely self-contained.\nPlease see <http://hackage.haskell.org/package/HipmunkPlayground>\nfor a demonstration of this library.\n\nVersion 5.2.0.16:\n\n* Bump dependency on transformers. (Thanks, Alfredo Di Napoli!)\n\nVersion 5.2.0.15:\n\n* Fix for working with GHC 7.6 again.\n\nVersion 5.2.0.14:\n\n* Compatibility with GHC 7.8. (Thanks, Michael Tolly!)\n\nVersion 5.2.0.11:\n\n* Compatibility with base == 4.6.* (Thanks, Zack Corr!)\n\nVersion 5.2.0.10:\n\n* Compatibility with base < 4.4\n\nNew in version 5.2.0.9:\n\n* Added Physics.Hipmunk.Constraint.setMaxBias and setMaxForce.\nThanks to Stephen Paul Weber.\n\nNew in version 5.2.0.6:\n\n* Fixed a memory leak related to collision handlers.\n\nNew in version 5.2.0.5:\n\n* Always compile @wrapper.c@ and fix Haddock errors\nwhile handling Unicode.  Thanks, Joachim Breitner.\n\nNew in version 5.2.0.4:\n\n* New system-chipmunk flag.  When activated, the package will\nuse the system-wide installed Chipmunk library.  Thanks,\nJoachim Breitner.\n\nNew in version 5.2.0.3:\n\n* Update to Chipmunk 5.3.5 and bump dependencies to\nmatch GHC 7.2.1. (Thanks, S&#246;nke Hahn!)\n\n* Now S&#246;nke Hahn is also a Hipmunk maintainer.  Awesome!\n\nNew in version 5.2.0.2:\n\n* Update to Chipmunk 5.3.4.  Note, however, that not all\nfunctionality available in Chipmunk 5.3.4 is here yet.  But\nthe bug fixes and performance improvements are.\n\n* Fix linking bug present since Hipmunk 5.1.0.  Thanks, S&#246;nke Hahn.\n\n* Correctly destroy the space in the presence of callbacks.\n\n* Workaround difficult-to-reproduce bug in Chipmunk where the\nnumber of contact points in an arbiter would get garbage.\nWhen that happens (and the garbage does look like garbage) we\ngive an empty list of contact points.\n\nLicensed under the MIT license (like Chipmunk itself).";
        buildType = "Simple";
      };
      components = {
        "Hipmunk" = {
          depends  = if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.StateVar
            ]
            else [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.StateVar
            ];
          libs = [
            pkgs.m
          ] ++ pkgs.lib.optional _flags.system-chipmunk pkgs.chipmunk;
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }