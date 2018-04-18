{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "armor";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Doug Beardsley, Formation Inc.";
        maintainer = "mightybyte@gmail.com";
        author = "Doug Beardsley";
        homepage = "https://github.com/mightybyte/armor";
        url = "";
        synopsis = "Armor data structures against serialization backwards compatibility problems";
        description = "Tests the serialization backwards compatibility of data types by storing\nserialized representations in .test files to be checked into your project's\nversion control.";
        buildType = "Simple";
      };
      components = {
        armor = {
          depends  = [
            hsPkgs.HUnit
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.lens
          ];
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.aeson
              hsPkgs.armor
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.text
            ];
          };
        };
      };
    }