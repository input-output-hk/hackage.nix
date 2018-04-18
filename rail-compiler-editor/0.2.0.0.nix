{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rail-compiler-editor";
          version = "0.2.0.0";
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
        exes = {
          RailCompiler = {
            depends  = [
              hsPkgs.base
              hsPkgs.llvm-general-pure
              hsPkgs.llvm-general
              hsPkgs.mtl
              hsPkgs.containers
            ];
          };
          RailEditor = {
            depends  = [
              hsPkgs.base
              hsPkgs.llvm-general-pure
              hsPkgs.llvm-general
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.gtk
              hsPkgs.process
            ];
          };
        };
        tests = {
          testcases = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.llvm-general-pure
              hsPkgs.llvm-general
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.process
            ];
          };
        };
      };
    }