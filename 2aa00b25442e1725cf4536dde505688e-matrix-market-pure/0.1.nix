{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "matrix-market-pure";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s.astanin@gmail.com";
        author = "Sergey Astanin";
        homepage = "http://bitbucket.org/jetxee/hs-matrix-market";
        url = "";
        synopsis = "Pure and composable reader and writer of the Matrix Market format.";
        description = "";
        buildType = "Simple";
      };
      components = {
        matrix-market-pure = {
          depends  = [ hsPkgs.base ];
        };
      };
    }