{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "protolude";
          version = "0.1.4";
        };
        license = "MIT";
        copyright = "2016 Stephen Diehl";
        maintainer = "stephen.m.diehl@gmail.com";
        author = "Stephen Diehl";
        homepage = "https://github.com/sdiehl/protolude";
        url = "";
        synopsis = "A sensible set of defaults for writing custom Preludes.";
        description = "A sensible set of defaults for writing custom Preludes.";
        buildType = "Simple";
      };
      components = {
        protolude = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.safe
            hsPkgs.async
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.semiring-simple
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.stm
            hsPkgs.string-conv
            hsPkgs.bytestring
          ];
        };
      };
    }