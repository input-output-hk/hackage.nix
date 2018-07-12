{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "these";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cam@uptoisomorphism.net";
        author = "C. McCann";
        homepage = "https://github.com/isomorphism/these";
        url = "";
        synopsis = "An either-or-both data type, with corresponding hybrid error/writer monad transformer.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "these" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.semigroups
            hsPkgs.bifunctors
            hsPkgs.semigroupoids
            hsPkgs.profunctors
            hsPkgs.vector
          ];
        };
      };
    }