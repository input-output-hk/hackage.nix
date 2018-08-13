{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "system-filepath";
        version = "0.4.14";
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
      "system-filepath" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "filesystem_path_tests" = {
          depends  = [
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