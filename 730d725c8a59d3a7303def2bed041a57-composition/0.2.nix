{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "composition";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "";
        url = "";
        synopsis = "Combinators for unorthodox function composition";
        description = "";
        buildType = "Simple";
      };
      components = {
        composition = {
          depends  = [ hsPkgs.base ];
        };
      };
    }