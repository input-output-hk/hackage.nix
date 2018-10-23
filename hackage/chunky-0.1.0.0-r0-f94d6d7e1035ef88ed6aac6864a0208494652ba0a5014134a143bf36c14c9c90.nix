{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "chunky";
        version = "0.1.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "hackage@314.ch";
      author = "Philipp Hausmann";
      homepage = "";
      url = "";
      synopsis = "Human-readable storage of text/binary objects.";
      description = "Allows serializing data into binary files, preserving human readability\nas far as possible. It allows mixing binary and textual data in the same file, and\nis a light-weight alternative to parsec & co. The generated files are not intended\nto be human-editable, only readable.\nIf the stored binary data is utf8-encoded text, the whole file can be read in any\ntext-editor.";
      buildType = "Simple";
    };
    components = {
      "chunky" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      exes = {
        "chunky-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.chunky)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test-roundtrip" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.chunky)
            (hsPkgs.HUnit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }