{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "minisat";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A Haskell bundle of the Minisat SAT solver";
        description = "";
        buildType = "Simple";
      };
      components = {
        "minisat" = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
          ];
          libs = [ pkgs."stdc++" ];
        };
      };
    }