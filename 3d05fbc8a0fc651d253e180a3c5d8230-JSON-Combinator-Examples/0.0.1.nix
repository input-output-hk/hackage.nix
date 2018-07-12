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
          name = "JSON-Combinator-Examples";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "";
        url = "";
        synopsis = "Example uses of the JSON-Combinator library.";
        description = "Example uses of the JSON-Combinator library.\n\n/The example JSON files use a specific JSON format because of a bug in json (Text.JSON)./";
        buildType = "Simple";
      };
      components = {
        "JSON-Combinator-Examples" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.JSONb
            hsPkgs.json
            hsPkgs.JSON-Combinator
          ];
        };
      };
    }