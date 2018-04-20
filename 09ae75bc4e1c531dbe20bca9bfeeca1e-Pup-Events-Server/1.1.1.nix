{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.2.0";
        identifier = {
          name = "Pup-Events-Server";
          version = "1.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2012 Daniel Wilson";
        maintainer = "wilsonhardrock@gmail.com";
        author = "Daniel Wilson";
        homepage = "";
        url = "";
        synopsis = "A networked event handling framework for hooking\ninto other programs.";
        description = "Pup-Events is a networking enabled event handling\nframework. This package contains the Server\ncomponent. In order for the server to be useful it\nneeds events and associated handlers, which you\nwrite. You then call the `server` function, passing\nin the required functions for the server to work\nproperly.";
        buildType = "Simple";
      };
      components = {
        Pup-Events-Server = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.parsec
            hsPkgs.Pup-Events-PQueue
            hsPkgs.network
            hsPkgs.transformers
          ];
        };
      };
    }