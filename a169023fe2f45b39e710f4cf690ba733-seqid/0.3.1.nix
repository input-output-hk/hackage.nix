{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "seqid";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "luke@hoersten.org";
        author = "Luke Hoersten";
        homepage = "";
        url = "";
        synopsis = "Sequence ID production and consumption";
        description = "Uniquely identify elements in a sequence.";
        buildType = "Simple";
      };
      components = {
        seqid = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }