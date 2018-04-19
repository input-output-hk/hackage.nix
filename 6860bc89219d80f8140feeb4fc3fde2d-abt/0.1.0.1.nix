{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "abt";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jon@jonmsterling.com";
        author = "Jonathan Sterling";
        homepage = "";
        url = "";
        synopsis = "Abstract binding trees for Haskell";
        description = "A Haskell port of the Carnegie Mellon ABT library (SML), with some improvements.";
        buildType = "Simple";
      };
      components = {
        abt = {
          depends  = [
            hsPkgs.base
            hsPkgs.vinyl
            hsPkgs.transformers
          ];
        };
      };
    }