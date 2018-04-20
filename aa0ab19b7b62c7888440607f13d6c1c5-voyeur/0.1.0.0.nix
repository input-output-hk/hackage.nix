{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "voyeur";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Seth Fowler";
        maintainer = "Seth Fowler <mark.seth.fowler@gmail.com>";
        author = "Seth Fowler <mark.seth.fowler@gmail.com>";
        homepage = "https://github.com/sethfowler/hslibvoyeur";
        url = "";
        synopsis = "Haskell bindings for libvoyeur";
        description = "Haskell bindings for libvoyeur, a library for observing the private\nactivities of child processes.";
        buildType = "Custom";
      };
      components = {
        voyeur = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.process
            hsPkgs.utf8-string
          ];
        };
      };
    }