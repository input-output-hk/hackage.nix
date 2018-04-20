{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hinotify";
          version = "0.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Kolmodin <kolmodin@gmail.com>";
        author = "Lennart Kolmodin";
        homepage = "https://github.com/kolmodin/hinotify.git";
        url = "";
        synopsis = "Haskell binding to inotify";
        description = "\nThis library provides a wrapper to the Linux Kernel's inotify feature,\nallowing applications to subscribe to notifications when a file is\naccessed or modified.\n";
        buildType = "Simple";
      };
      components = {
        hinotify = {
          depends  = [
            hsPkgs.unix
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
            ]
            else [ hsPkgs.base ]);
        };
      };
    }