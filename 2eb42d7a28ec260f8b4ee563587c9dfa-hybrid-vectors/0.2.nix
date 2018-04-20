{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hybrid-vectors";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/hybrid-vectors";
        url = "";
        synopsis = "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors";
        description = "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors";
        buildType = "Simple";
      };
      components = {
        hybrid-vectors = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.primitive
            hsPkgs.vector
          ];
        };
      };
    }