{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "salvia";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sfvisser@cs.uu.nl";
        author = "Sebastiaan Visser";
        homepage = "";
        url = "";
        synopsis = "Lightweight Haskell Web Server Framework";
        description = "Lightweight Haskell Web Server Framework";
        buildType = "Simple";
      };
      components = {
        salvia = {
          depends  = [
            hsPkgs.base
            hsPkgs.bimap
            hsPkgs.bytestring
            hsPkgs.clevercss
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.encoding
            hsPkgs.filepath
            hsPkgs.hscolour
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.process
            hsPkgs.random
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.utf8-string
          ];
        };
      };
    }