{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "oanda-rest-api";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2016 John David Reaver";
        maintainer = "johndreaver@gmail.com";
        author = "John David Reaver";
        homepage = "http://github.com/jdreaver/oanda-rest-api";
        url = "";
        synopsis = "Client to the OANDA REST API";
        description = "Client to the OANDA REST API";
        buildType = "Simple";
      };
      components = {
        "oanda-rest-api" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.Decimal
            hsPkgs.lens
            hsPkgs.old-locale
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.wreq
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.Decimal
              hsPkgs.lens
              hsPkgs.old-locale
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.time
              hsPkgs.vector
              hsPkgs.wreq
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
          "style" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }