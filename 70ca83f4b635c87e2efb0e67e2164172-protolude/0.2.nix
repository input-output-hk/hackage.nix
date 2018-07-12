{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "protolude";
          version = "0.2";
        };
        license = "MIT";
        copyright = "2016-2017 Stephen Diehl";
        maintainer = "stephen.m.diehl@gmail.com";
        author = "Stephen Diehl";
        homepage = "https://github.com/sdiehl/protolude";
        url = "";
        synopsis = "A small prelude.";
        description = "A sensible set of defaults for writing custom Preludes.";
        buildType = "Simple";
      };
      components = {
        "protolude" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.ghc-prim
            hsPkgs.async
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.stm
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.mtl-compat
          ] ++ [ hsPkgs.safe ];
        };
      };
    }