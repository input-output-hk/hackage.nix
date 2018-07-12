{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "highjson-swagger";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "(c) 2017 Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "https://github.com/agrafix/highjson";
        url = "";
        synopsis = "Derive swagger instances from highjson specs";
        description = "Derive swagger instances from highjson specs";
        buildType = "Simple";
      };
      components = {
        "highjson-swagger" = {
          depends  = [
            hsPkgs.base
            hsPkgs.highjson
            hsPkgs.swagger2
            hsPkgs.text
            hsPkgs.lens
            hsPkgs.insert-ordered-containers
            hsPkgs.hvect
          ];
        };
        tests = {
          "highjson-swagger-tests" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.highjson
              hsPkgs.highjson-swagger
              hsPkgs.aeson
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.lens
              hsPkgs.swagger2
              hsPkgs.bytestring
            ];
          };
        };
      };
    }