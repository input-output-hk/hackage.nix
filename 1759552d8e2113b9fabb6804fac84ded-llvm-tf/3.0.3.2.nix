{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "llvm-tf";
          version = "3.0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
        author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Bindings to the LLVM compiler toolkit using type families.";
        description = "High-level bindings to the LLVM compiler toolkit\nusing type families instead of functional dependencies.\n\nWe use the same module names as the @llvm@ package,\nwhich makes it harder to work with both packages from GHCi.\nYou may use the @-hide-package@ option.\nWe may change the module names later.\n\nA note on versioning:\nThe first two version numbers match the version of LLVM.\nIn order to be able to improve the Haskell API for the same version of LLVM,\nI use the first three numbers of the Cabal package version\nas the major version in the sense of the Package Versioning Policy PVP.\nThat is, a bump from 3.0.0 to 3.0.1 may contain substantial API changes,\na bump from 3.0.0.0 to 3.0.0.1 may contain API extensions,\nand a bump from 3.0.0.0.0 to 3.0.0.0.1 may contain API-preserving bugfixes.";
        buildType = "Simple";
      };
      components = {
        llvm-tf = {
          depends  = [
            hsPkgs.llvm-ffi
            hsPkgs.tfp
            hsPkgs.transformers
            hsPkgs.process
            hsPkgs.storable-record
            hsPkgs.fixed-length
            hsPkgs.non-empty
            hsPkgs.utility-ht
            hsPkgs.containers
            hsPkgs.base
          ];
          frameworks = pkgs.lib.optional system.isOsx pkgs.vecLib;
        };
        exes = {
          llvm-align = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-arith = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-array = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-brainf = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-call-conv = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.llvm-ffi
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-dot-prod = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-fibonacci = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-hello-jit = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-intrinsic = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.non-empty
              hsPkgs.base
            ];
          };
          llvm-list = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-struct = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-varargs = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
          llvm-vector = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.llvm-tf
              hsPkgs.tfp
              hsPkgs.base
            ];
          };
        };
      };
    }