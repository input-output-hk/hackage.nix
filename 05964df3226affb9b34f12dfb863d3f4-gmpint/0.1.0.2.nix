{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "gmpint";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/gmpint#readme";
        url = "";
        synopsis = "GMP integer conversions";
        description = "This defines a 'Storable' instance for GMP's integer type and provides several functions for working with GMP integers.";
        buildType = "Simple";
      };
      components = {
        "gmpint" = {
          depends  = [
            hsPkgs.base
            hsPkgs.recursion-schemes
          ];
        };
      };
    }