{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "woffex";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Andrew Drake";
      maintainer = "adrake@adrake.org";
      author = "Andrew Drake";
      homepage = "";
      url = "";
      synopsis = "Web Open Font Format (WOFF) unpacker.";
      description = "This is a small program to repackage fonts in the Web Open Font Format (WOFF)\nto the Sfnt file format. The code contains a general WOFF parser and Sfnt\nfile generator which could be split out and extended to be useful for other\napplications.\n\n[@WOFF Spec@] <http://www.w3.org/TR/WOFF/>\n\n[@Sfnt Spec@] <http://developer.apple.com/fonts/TTRefMan/RM06/Chap6.html>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "woffex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }