{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "composition-prelude";
          version = "0.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Vanessa McHale";
        maintainer = "vanessa.mchale@reconfigure.io";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/composition-prelude#readme";
        url = "";
        synopsis = "Higher-order function combinators";
        description = "Replacement for `composition` or `composition-exta`, exporting everything in one sane module.";
        buildType = "Simple";
      };
      components = {
        composition-prelude = {
          depends  = [ hsPkgs.base ];
        };
      };
    }