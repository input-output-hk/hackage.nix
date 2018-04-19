{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "microlens-aeson";
          version = "2.1.0";
        };
        license = "MIT";
        copyright = "Copyright (C) 2012 Paul Wilson\nCopyright (C) 2013 Edward A. Kmett\nCopyright (C) 2015 Colin Woodbury";
        maintainer = "Colin Woodbury <colingw@gmail.com>";
        author = "Colin Woodbury";
        homepage = "http://github.com/fosskers/microlens-aeson/";
        url = "";
        synopsis = "Law-abiding lenses for Aeson, using microlens.";
        description = "Law-abiding lenses for Aeson, using microlens.";
        buildType = "Custom";
      };
      components = {
        microlens-aeson = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.microlens
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          doctests = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.generic-deriving
              hsPkgs.semigroups
              hsPkgs.simple-reflect
            ];
          };
        };
      };
    }