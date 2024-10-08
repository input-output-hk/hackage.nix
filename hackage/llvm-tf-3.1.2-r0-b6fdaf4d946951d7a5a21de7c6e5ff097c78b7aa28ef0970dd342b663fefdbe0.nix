{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { developer = false; buildexamples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "llvm-tf"; version = "3.1.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."llvm-ffi" or (errorHandler.buildDepError "llvm-ffi"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."enumset" or (errorHandler.buildDepError "enumset"))
          (hsPkgs."fixed-length" or (errorHandler.buildDepError "fixed-length"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."vecLib" or (errorHandler.sysDepError "vecLib"));
        buildable = true;
      };
      exes = {
        "llvm-align" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-arith" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-array" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-brainf" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-call-conv" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."llvm-ffi" or (errorHandler.buildDepError "llvm-ffi"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-dot-prod" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-fibonacci" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-hello-jit" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-intrinsic" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-list" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-struct" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-varargs" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "llvm-vector" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
    };
  }