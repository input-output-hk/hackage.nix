{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lens-aeson";
          version = "1.0.2";
        };
        license = "MIT";
        copyright = "Copyright (C) 2012 Paul Wilson\nCopyright (C) 2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/lens/lens-aeson/";
        url = "";
        synopsis = "Law-abiding lenses for aeson";
        description = "Law-abiding lenses for aeson";
        buildType = "Custom";
      };
      components = {
        "lens-aeson" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.scientific
          ];
        };
        tests = {
          "doctests" = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.generic-deriving
              hsPkgs.lens-aeson
              hsPkgs.semigroups
              hsPkgs.simple-reflect
            ];
          };
        };
      };
    }