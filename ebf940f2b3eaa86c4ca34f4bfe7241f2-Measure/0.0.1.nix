{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Measure";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tony Morris";
        author = "Tony Morris <code@tmorris.net>";
        homepage = "";
        url = "";
        synopsis = "A library for units of measurement";
        description = "A library for units of measurement";
        buildType = "Simple";
      };
      components = {
        Measure = {
          depends  = [ hsPkgs.base ];
        };
      };
    }