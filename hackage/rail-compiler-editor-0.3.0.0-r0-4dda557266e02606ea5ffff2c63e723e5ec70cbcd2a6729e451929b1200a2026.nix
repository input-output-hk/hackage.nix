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
        name = "rail-compiler-editor";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "borgers@mi.fu-berlin.de";
      author = "see AUTHORS";
      homepage = "https://github.com/SWP-Ubau-SoSe2014-Haskell/SWPSoSe14";
      url = "";
      synopsis = "Compiler and editor for the esolang rail.";
      description = "A compiler and a graphical editor for the esoteric programming language rail.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.llvm-general-pure)
          (hsPkgs.llvm-general)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "RailCompiler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rail-compiler-editor)
          ];
        };
        "RailEditor" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.rail-compiler-editor)
          ];
        };
      };
      tests = {
        "testcases" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.rail-compiler-editor)
            (hsPkgs.process)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }