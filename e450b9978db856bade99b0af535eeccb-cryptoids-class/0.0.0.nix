{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cryptoids-class";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gregor Kleen <aethoago@141.li>";
        author = "Gregor Kleen <aethoago@141.li>";
        homepage = "";
        url = "";
        synopsis = "Typeclass-based interface to cryptoids";
        description = "";
        buildType = "Simple";
      };
      components = {
        "cryptoids-class" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cryptoids-types
            hsPkgs.exceptions
          ];
        };
      };
    }