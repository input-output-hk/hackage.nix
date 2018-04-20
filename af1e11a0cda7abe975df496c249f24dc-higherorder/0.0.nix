{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "higherorder";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "none";
        author = "Chris Done <chrisdone@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Some higher order functions for Bool and []";
        description = "Some higher order functions";
        buildType = "Simple";
      };
      components = {
        higherorder = {
          depends  = [ hsPkgs.base ];
        };
      };
    }