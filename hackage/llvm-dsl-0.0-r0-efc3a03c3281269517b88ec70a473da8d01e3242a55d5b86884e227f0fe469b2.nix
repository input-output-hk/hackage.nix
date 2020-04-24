{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "llvm-dsl"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://wiki.haskell.org/LLVM";
      url = "";
      synopsis = "Support for writing an EDSL with LLVM-JIT as target";
      description = "Support for writing an EDSL with LLVM-JIT as target.\n\n* \"LLVM.DSL.Expression\":\nCode snippets that represent arithmetics\nand support arithmetic operators.\n\n* \"LLVM.DSL.Parameter\":\nParameterize LLVM-generated code.\n\n* \"LLVM.DSL.Execution\":\nAssemble functions to modules and run them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
          (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
          (hsPkgs."tfp" or ((hsPkgs.pkgs-errors).buildDepError "tfp"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."storable-enum" or ((hsPkgs.pkgs-errors).buildDepError "storable-enum"))
          (hsPkgs."bool8" or ((hsPkgs.pkgs-errors).buildDepError "bool8"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."prelude-compat" or ((hsPkgs.pkgs-errors).buildDepError "prelude-compat"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }