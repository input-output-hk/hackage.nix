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
      specVersion = "1.10";
      identifier = {
        name = "html-charset";
        version = "0.1.0";
      };
      license = "LGPL-2.1-only";
      copyright = "(c) 2018 Hong Minhee";
      maintainer = "Hong Minhee <hong.minhee@gmail.com>";
      author = "Hong Minhee <hong.minhee@gmail.com>";
      homepage = "https://github.com/dahlia/html-charset#readme";
      url = "";
      synopsis = "Determine character encoding of HTML documents/fragments";
      description = "Please see the README.md on GitHub at <https://github.com/dahlia/html-charset#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.charsetdetect-ae)
        ];
      };
      exes = {
        "html-charset" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.html-charset)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            (hsPkgs.html-charset)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }