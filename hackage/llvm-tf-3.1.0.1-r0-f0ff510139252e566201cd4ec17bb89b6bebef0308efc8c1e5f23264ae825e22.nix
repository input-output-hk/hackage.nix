{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      developer = false;
      buildexamples = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "llvm-tf";
        version = "3.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit using type families.";
      description = "High-level bindings to the LLVM compiler toolkit\nusing type families instead of functional dependencies.\n\nWe use the same module names as the @llvm@ package,\nwhich makes it harder to work with both packages from GHCi.\nYou may use the @-hide-package@ option.\nWe may change the module names later.\n\nA note on versioning:\nThe versions of this package are loosely based on the LLVM version.\nHowever, we depend on a relatively stable part of LLVM\nand provide a relatively stable API for it.\nWe conform to the Package Versioning Policy PVP,\ni.e. we increase the version of this package when its API changes,\nbut not necessarily when we add support for a new LLVM version.\nWe support all those LLVM versions\nthat are supported by our @llvm-ffi@ dependency.";
      buildType = "Simple";
    };
    components = {
      "llvm-tf" = {
        depends  = [
          (hsPkgs.llvm-ffi)
          (hsPkgs.tfp)
          (hsPkgs.transformers)
          (hsPkgs.storable-record)
          (hsPkgs.enumset)
          (hsPkgs.fixed-length)
          (hsPkgs.non-empty)
          (hsPkgs.utility-ht)
          (hsPkgs.containers)
          (hsPkgs.base)
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."vecLib");
      };
      exes = {
        "llvm-align" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-arith" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-array" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-brainf" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-call-conv" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.llvm-ffi)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-dot-prod" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-fibonacci" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-hello-jit" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-intrinsic" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.non-empty)
            (hsPkgs.base)
          ];
        };
        "llvm-list" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-struct" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-varargs" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.base)
          ];
        };
        "llvm-vector" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.llvm-tf)
            (hsPkgs.tfp)
            (hsPkgs.transformers)
            (hsPkgs.base)
          ];
        };
      };
    };
  }