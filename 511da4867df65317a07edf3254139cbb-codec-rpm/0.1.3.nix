{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "codec-rpm";
          version = "0.1.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "clumens@redhat.com";
        author = "Chris Lumens";
        homepage = "https://github.com/weldr/codec-rpm";
        url = "";
        synopsis = "A library for manipulating RPM files";
        description = "This module provides a library for reading RPM files and converting them\ninto useful data structures.  There is currently no way to operate in\nreverse - that is, for building an RPM file out of a data structure.";
        buildType = "Simple";
      };
      components = {
        "codec-rpm" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.attoparsec-binary
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.conduit-extra
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.resourcet
            hsPkgs.text
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.hspec-attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.codec-rpm
              hsPkgs.text
            ];
          };
        };
      };
    }