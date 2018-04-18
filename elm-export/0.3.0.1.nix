{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "elm-export";
          version = "0.3.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2015-2016 Kris Jenkins";
        maintainer = "kris.jenkins@clearercode.com";
        author = "Kris Jenkins";
        homepage = "http://github.com/krisajenkins/elm-export";
        url = "";
        synopsis = "A library to generate Elm types from Haskell source.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        elm-export = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          elm-export-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.elm-export
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.quickcheck-instances
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }