{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "codec-rpm";
        version = "0.2.2";
      };
      license = "LGPL-2.1-only";
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
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-binary)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.cpio-conduit)
          (hsPkgs.exceptions)
          (hsPkgs.lzma-conduit)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.resourcet)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-binary)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.text)
          ];
        };
      };
    };
  }