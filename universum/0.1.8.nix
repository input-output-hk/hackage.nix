{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "universum";
          version = "0.1.8";
        };
        license = "MIT";
        copyright = "2016-2016 Stephen Diehl, 2016-2016 Serokell";
        maintainer = "hi@serokell.io";
        author = "Stephen Diehl";
        homepage = "https://github.com/serokell/universum";
        url = "";
        synopsis = "A sensible set of defaults for writing custom Preludes.";
        description = "A sensible set of defaults for writing custom Preludes.";
        buildType = "Simple";
      };
      components = {
        universum = {
          depends  = [
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.mtl
            hsPkgs.safe
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }