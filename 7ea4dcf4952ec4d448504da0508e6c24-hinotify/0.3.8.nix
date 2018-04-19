{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hinotify";
          version = "0.3.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Kolmodin <kolmodin@gmail.com>";
        author = "Lennart Kolmodin";
        homepage = "https://github.com/kolmodin/hinotify.git";
        url = "";
        synopsis = "Haskell binding to inotify";
        description = "This library provides a wrapper to the Linux Kernel's inotify feature,\nallowing applications to subscribe to notifications when a file is\naccessed or modified.";
        buildType = "Simple";
      };
      components = {
        hinotify = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.unix
          ];
        };
        tests = {
          test001 = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hinotify
            ];
          };
          test002 = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hinotify
            ];
          };
          test003 = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hinotify
            ];
          };
          test004 = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hinotify
            ];
          };
          test005 = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hinotify
            ];
          };
        };
      };
    }