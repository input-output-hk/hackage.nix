{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "arrows";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
        author = "Ross Paterson <ross@soi.city.ac.uk>";
        homepage = "http://www.haskell.org/arrows/";
        url = "";
        synopsis = "Arrow classes and transformers";
        description = "Several classes that extend the Arrow class, and some transformers\nthat implement or lift these classes.";
        buildType = "Custom";
      };
      components = {
        "arrows" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }