{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apioiaf-client";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Karl Berger";
        maintainer = "krab.berger@gmail.com";
        author = "Karl Berger";
        homepage = "https://github.com/kberger/anapioficeandfire-haskell#readme";
        url = "";
        synopsis = "Consumer library for anapioficeandfire.com";
        description = "\nA wrapper library for consuming the data provided by <http://anapioficeandfire.com>\n\nSee README for API details <https://github.com/kberger/anapioficeandfire-haskell#readme>";
        buildType = "Simple";
      };
      components = {
        apioiaf-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.wreq
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.bytestring
          ];
        };
        tests = {
          apioiaf-client-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.apioiaf-client
            ];
          };
        };
      };
    }