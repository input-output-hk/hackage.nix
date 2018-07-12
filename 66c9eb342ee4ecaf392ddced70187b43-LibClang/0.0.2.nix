{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "LibClang";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chetan Taralekar <chetant@gmail.com>";
        author = "Chetan Taralekar <chetant@gmail.com>";
        homepage = "https://github.com/chetant/LibClang/issues";
        url = "";
        synopsis = "Haskell bindings for libclang (a C++ parsing library)";
        description = "LibClang package provides direct bindings to libclang.\nThis should be enough for parsing C/C++ code, walking the AST and querying nodes and completion queries.\nNOTE .. When configuring, please ensure llvm-config is in path\n.. or provide the location of libclang and llvm includes\n.. if not in the default locations using --configure-option=-I...\n.. You can also use --configure-option=--enable-llvm-shared=LLVMSHAREDLIB_PREFIX\n.. if you'd like to link to the shared library";
        buildType = "Configure";
      };
      components = {
        "LibClang" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ffi
            hsPkgs.greencard
          ];
          build-tools = [
            hsPkgs.buildPackages.greencard
          ];
        };
      };
    }