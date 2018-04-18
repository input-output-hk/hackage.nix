{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nitro";
          version = "0.2.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "edahlgren@bu.mp";
        author = "Erin Dahlgren";
        homepage = "http://haskell.gonitro.io";
        url = "";
        synopsis = "Haskell bindings for Nitro";
        description = "Nitro is a secure message-passing network applications library.";
        buildType = "Simple";
      };
      components = {
        nitro = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [
            pkgs.nitro
            pkgs.nitronacl
            pkgs.ev
            pkgs.pthread
          ];
        };
      };
    }