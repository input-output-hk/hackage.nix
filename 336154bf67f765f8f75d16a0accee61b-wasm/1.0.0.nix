{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wasm";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Ilya Rezvov <rezvov.ilya@gmail.com>";
        author = "Ilya Rezvov";
        homepage = "https://github.com/SPY/haskell-wasm/";
        url = "";
        synopsis = "WebAssembly Language Toolkit and Interpreter";
        description = "This package contains fully spec-compatible tooling for WebAssembly.\nFeatures include:\n\n* WebAssembly Text Representation Parser\n\n* WebAssembly Binary Representation encoder and decoder\n\n* Spec-compatible Module validator (checked with Spec Core Test Suite)\n\n* Spec-compatible Interpreter (checked with Spec Core Test Suite)\n\n* Extended scipting grammar parser and executor\n\n* WebAssembly Module building eDSL";
        buildType = "Simple";
      };
      components = {
        "wasm" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.utf8-string
            hsPkgs.cereal
            hsPkgs.vector
            hsPkgs.ieee754
            hsPkgs.deepseq
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
            hsPkgs.buildPackages.happy
          ];
        };
        exes = {
          "wasm" = {
            depends  = [
              hsPkgs.base
              hsPkgs.wasm
              hsPkgs.optparse-applicative
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.wasm
            ];
            build-tools = [
              hsPkgs.buildPackages.alex
              hsPkgs.buildPackages.happy
            ];
          };
        };
      };
    }