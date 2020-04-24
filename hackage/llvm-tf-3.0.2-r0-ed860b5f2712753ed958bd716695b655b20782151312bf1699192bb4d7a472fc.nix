{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "llvm-tf"; version = "3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thieleman <llvm@henning-thielemann.de>";
      author = "Henning Thieleman, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit using type families.";
      description = "High-level bindings to the LLVM compiler toolkit\nusing type families instead of functional dependencies.\n\n* New in 3.0.0.0:\nThe low-level bindings have been split into the llvm-base package.\n\nWe use the same module names as the @llvm@ package,\nwhich makes it harder to work with both packages from GHCi.\nYou may use the @-hide-package@ option.\nWe may change the module names later.\n\nA note on versioning:\nThe first two version numbers match the version of LLVM.\nIn order to be able to improve the Haskell API for the same version of LLVM,\nI use the first three numbers of the Cabal package version\nas the major version in the sense of the Package Versioning Policy PVP.\nThat is, a bump from 3.0.0 to 3.0.1 may contain substantial API changes,\na bump from 3.0.0.0 to 3.0.0.1 may contain API extensions,\nand a bump from 3.0.0.0.0 to 3.0.0.0.1 may contain API-preserving bugfixes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-base" or ((hsPkgs.pkgs-errors).buildDepError "llvm-base"))
          (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."vecLib" or ((hsPkgs.pkgs-errors).sysDepError "vecLib"));
        buildable = true;
        };
      exes = {
        "llvm-align" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-arith" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-array" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-brainf" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-call-conv" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."llvm-base" or ((hsPkgs.pkgs-errors).buildDepError "llvm-base"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-dot-prod" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-fibonacci" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-hello-jit" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-list" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-struct" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-varargs" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "llvm-vector" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }