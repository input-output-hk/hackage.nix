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
      specVersion = "1.2";
      identifier = {
        name = "utf8-string";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "emertens@galois.com";
      author = "Eric Mertens";
      homepage = "http://github.com/glguy/utf8-string/";
      url = "";
      synopsis = "Support for reading and writing UTF8 Strings";
      description = "A UTF8 layer for Strings. The utf8-string\npackage provides operations for encoding UTF8\nstrings to Word8 lists and back, and for reading and\nwriting UTF8 without truncation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }