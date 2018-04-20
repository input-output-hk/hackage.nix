{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "feldspar-signal";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mararon@chalmers.se";
        author = "mararon";
        homepage = "https://github.com/markus-git/feldspar-signal";
        url = "";
        synopsis = "Signal Processing extension for Feldspar";
        description = "";
        buildType = "Simple";
      };
      components = {
        feldspar-signal = {
          depends  = [ hsPkgs.base ];
        };
      };
    }