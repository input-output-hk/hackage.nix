{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "seqid";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "Bitnomial, Inc. (c) 2016";
        maintainer = "luke@bitnomial.com";
        author = "Luke Hoersten";
        homepage = "https://github.com/bitnomial/seqid";
        url = "";
        synopsis = "Sequence ID production and consumption";
        description = "Uniquely identify elements in a sequence.";
        buildType = "Simple";
      };
      components = {
        "seqid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }