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
      specVersion = "1.8";
      identifier = {
        name = "svndump";
        version = "0.4.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 John Wiegley";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/svndump/";
      url = "";
      synopsis = "Library for reading Subversion dump files";
      description = "A library for parsing Subversion dump files.  The objective is to convert a\ndump file into a series of data structures representing that same\ninformation.  It uses `Data.ByteString.Lazy` to reading the file, and\n`Data.Text` to represent text fields which may contain Unicode characters.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.old-locale)
          (hsPkgs.time)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
        "test-raw" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.zlib)
            (hsPkgs.svndump)
          ];
        };
        "test-cooked" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.zlib)
            (hsPkgs.svndump)
          ];
        };
      };
    };
  }