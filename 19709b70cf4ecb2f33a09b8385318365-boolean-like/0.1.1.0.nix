{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "boolean-like";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Benedict Aas";
        maintainer = "x@shou.io";
        author = "Benedict Aas";
        homepage = "http://github.com/Shou/boolean-like";
        url = "";
        synopsis = "Logical combinatory operations dealing with datatypes\nrepresenting booleans by their constructors.";
        description = "Boolean-like logical combinatory operations under typeclasses\nAndlike, Orlike, and Xorlike and a typeclass Falsifier for datatypes with\nunary false-like values (e.g. Nothing, []).";
        buildType = "Simple";
      };
      components = {
        "boolean-like" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.vector
          ];
        };
      };
    }