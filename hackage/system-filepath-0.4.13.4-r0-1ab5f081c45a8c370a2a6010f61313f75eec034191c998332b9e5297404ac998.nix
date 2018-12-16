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
        version = "0.4.13.4";
      };
      license = "MIT";
      copyright = "John Millikin 2010-2012";
      maintainer = "FP Complete <michael@fpcomplete.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://github.com/fpco/haskell-filesystem";
      url = "";
      synopsis = "High-level, byte-based file and directory path manipulations (deprecated)";
      description = "Please see: https://plus.google.com/+MichaelSnoyman/posts/Ft5hnPqpgEx";
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