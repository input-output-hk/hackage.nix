{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      preferlibcpp = false;
      preferlibstdcpp = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "LibClang";
          version = "3.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chetan Taralekar <chetant@gmail.com>, Seth Fowler <mark.seth.fowler@gmail.com>";
        author = "Chetan Taralekar <chetant@gmail.com>";
        homepage = "https://github.com/chetant/LibClang/issues";
        url = "";
        synopsis = "Haskell bindings for libclang (a C++ parsing library)";
        description = "LibClang package provides bindings to libclang.\n\nThis should be enough for parsing C/C++ code, walking the AST and querying nodes and completion queries.\n\n* NOTE: this library comes with llvm and clang included, so build times will be higher than most packages\n\nPlease use <https://github.com/chetant/LibClang/issues> to report bugs";
        buildType = "Custom";
      };
      components = {
        LibClang = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.vector
          ];
          libs = [ pkgs.ncurses ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }