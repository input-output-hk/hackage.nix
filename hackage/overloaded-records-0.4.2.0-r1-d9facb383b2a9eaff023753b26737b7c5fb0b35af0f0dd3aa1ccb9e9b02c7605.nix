{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pedantic = false; force-functor-classes = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "overloaded-records"; version = "0.4.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/overloaded-records";
      url = "";
      synopsis = "Overloaded Records based on current GHC proposal.";
      description = "Implementation of /Overloaded Record Fields/ based on current GHC proposal.\nIt is built on top of functionality that is included in GHC 8.0.1, but it\nworks on older GHC versions as well. Most importantly, this library provides\nTemplate Haskell functions for automatic deriving of instancess for\n@HasField@ and @ModifyField@ type classes. With these instances overloaded\nfields can be used directly as getters and lenses.\n\nSee README for usage examples.\n\nMore about the current status of OverloadedRecordFields language extension\ncan be found on:\n<https://ghc.haskell.org/trac/ghc/wiki/Records/OverloadedRecordFields GHC Wiki: OverloadedRecordFields>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8" && flags.force-functor-classes) (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"));
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."overloaded-records" or ((hsPkgs.pkgs-errors).buildDepError "overloaded-records"))
            ] ++ (if compiler.isGhc && (compiler.version).lt "8" && flags.force-functor-classes
            then [
              (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
              ]
            else (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers")));
          buildable = true;
          };
        };
      };
    }