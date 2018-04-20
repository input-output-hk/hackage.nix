{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "serial-test-generators";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Scott <scottmurphy09@gmail.com>";
        author = "Scott <scottmurphy09@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Test your 'Aeson' 'Serialize' and 'Binary' instances for stability over time";
        description = "When I am programming haskell I write a lot of getter setter serialization tests\nfor aeson, binary, cereal\nThese libraries are often associated with state.\nThis library standardizes those tests";
        buildType = "Simple";
      };
      components = {
        serial-test-generators = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.bytestring
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.cereal
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.system-fileio
            ];
          };
        };
      };
    }