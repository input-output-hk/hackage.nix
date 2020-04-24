{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "sequent-core"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maurerl@cs.uoregon.edu";
      author = "Luke Maurer, Paul Downen, Iavor S. Diatchki";
      homepage = "https://github.com/lukemaurer/sequent-core";
      url = "https://github.com/lukemaurer/sequent-core/archive/master.zip";
      synopsis = "Alternative Core language for GHC plugins";
      description = "Sequent Core is a GHC plugin library based on a sequent calculus. It includes:\n\n*   A set of datatypes for a language expressing function code as /interactions/\nbetween values and their contexts (/continuations/)\n*   A library for writing GHC optimizer plugins using the Sequent Core\nlanguage in place of the built-in Core language\n*   Example plugins written using Sequent Core";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "DumpExpl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sequent-core" or ((hsPkgs.pkgs-errors).buildDepError "sequent-core"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SpecConstrExpl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sequent-core" or ((hsPkgs.pkgs-errors).buildDepError "sequent-core"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SimplExpl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sequent-core" or ((hsPkgs.pkgs-errors).buildDepError "sequent-core"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "CasesExpl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sequent-core" or ((hsPkgs.pkgs-errors).buildDepError "sequent-core"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "SizesExpl" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sequent-core" or ((hsPkgs.pkgs-errors).buildDepError "sequent-core"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }