{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-py";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Erik Aker";
        maintainer = "eraker@gmail.com";
        author = "Erik Aker";
        homepage = "https://github.com/pellagic-puffbomb/servant-py#readme";
        url = "";
        synopsis = "Automatically derive python functions to query servant webservices.";
        description = "Automatically derive python functions to query servant webservices.\n\nSupports deriving functions using Python's requests library.";
        buildType = "Simple";
      };
      components = {
        "servant-py" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.charset
            hsPkgs.lens
            hsPkgs.servant-foreign
            hsPkgs.servant
            hsPkgs.text
          ];
        };
        exes = {
          "servant-py-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.servant-py
              hsPkgs.stm
              hsPkgs.aeson
              hsPkgs.wai
              hsPkgs.servant
              hsPkgs.servant-foreign
              hsPkgs.servant-server
              hsPkgs.servant-blaze
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.warp
            ];
          };
        };
        tests = {
          "servant-py-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant-py
              hsPkgs.aeson
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.lens
              hsPkgs.QuickCheck
              hsPkgs.servant
              hsPkgs.servant-foreign
              hsPkgs.text
            ];
          };
        };
      };
    }