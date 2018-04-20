{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "applicative-extras";
          version = "0.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Eidhof <ce+hackage@tupil.com>";
        author = "Chris Eidhof <ce+hackage@tupil.com>, Russel O'Connor, Jeremy Shaw";
        homepage = "http://github.com/chriseidhof/applicative-extras/";
        url = "";
        synopsis = "Instances for Applicative";
        description = "Some instances for applicative functors and type-level\ncomposition. Forkable on github.";
        buildType = "Simple";
      };
      components = {
        applicative-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
          ];
        };
      };
    }