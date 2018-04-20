{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microlens-aeson";
          version = "2.3.0";
        };
        license = "MIT";
        copyright = "Copyright (C) 2012 Paul Wilson, (C) 2013 Edward A. Kmett, (C) 2015 Colin Woodbury";
        maintainer = "Colin Woodbury <colingw@gmail.com>";
        author = "Colin Woodbury";
        homepage = "http://github.com/fosskers/microlens-aeson/";
        url = "";
        synopsis = "Law-abiding lenses for Aeson, using microlens.";
        description = "Law-abiding lenses for Aeson, using microlens.";
        buildType = "Simple";
      };
      components = {
        microlens-aeson = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.microlens
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          microlens-aeson-test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.microlens
              hsPkgs.microlens-aeson
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          microlens-aeson-bench = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.microlens
              hsPkgs.microlens-aeson
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }