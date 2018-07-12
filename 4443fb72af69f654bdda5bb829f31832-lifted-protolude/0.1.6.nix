{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lifted-protolude";
          version = "0.1.6";
        };
        license = "MIT";
        copyright = "2016 Stephen Diehl, Matt Parsons";
        maintainer = "parsonsmatt@gmail.com";
        author = "Stephen Diehl";
        homepage = "https://github.com/parsonsmat/lifted-protolude";
        url = "";
        synopsis = "A sensible set of defaults for writing lifted custom Preludes.";
        description = "A sensible set of defaults for writing custom Preludes, using 'lifted-base', 'exceptions', and 'lifted-async'.";
        buildType = "Simple";
      };
      components = {
        "lifted-protolude" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.safe
            hsPkgs.async
            hsPkgs.deepseq
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.stm
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.lifted-base
            hsPkgs.lifted-async
          ];
        };
      };
    }