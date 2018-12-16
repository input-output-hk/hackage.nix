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
        name = "system-filepath";
        version = "0.4.12";
      };
      license = "MIT";
      copyright = "John Millikin 2010-2012";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-filesystem/";
      url = "";
      synopsis = "High-level, byte-based file and directory path manipulations";
      description = "THIS PACKAGE IS DEPRECATED, AND NO LONGER MAINTAINED. Users of\nGHC >= 7.4 should use the native file path handling, which now\nsupports paths containing arbitrary bytes. Users of older GHC\nversions should upgrade to GHC >= 7.4.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.text)
        ];
      };
      tests = {
        "filesystem_path_tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chell)
            (hsPkgs.chell-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
          ];
        };
      };
    };
  }