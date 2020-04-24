{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "copilot"; version = "3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Frank Dedden <dev@dedden.net>";
      author = "Frank Dedden, Nis Nordby Wegmann, Lee Pike, Robin Morisset, Sebastian Niller, Alwyn Goodloe";
      homepage = "https://copilot-language.github.io";
      url = "";
      synopsis = "A stream DSL for writing embedded C programs.";
      description = "This package is the main entry-point for using Copilot.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/Copilot-Language/copilot-discussion>.\n\nExamples are available at <https://github.com/Copilot-Language/Copilot/tree/master/Examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."copilot-core" or ((hsPkgs.pkgs-errors).buildDepError "copilot-core"))
          (hsPkgs."copilot-theorem" or ((hsPkgs.pkgs-errors).buildDepError "copilot-theorem"))
          (hsPkgs."copilot-language" or ((hsPkgs.pkgs-errors).buildDepError "copilot-language"))
          (hsPkgs."copilot-libraries" or ((hsPkgs.pkgs-errors).buildDepError "copilot-libraries"))
          (hsPkgs."copilot-c99" or ((hsPkgs.pkgs-errors).buildDepError "copilot-c99"))
          ];
        buildable = true;
        };
      };
    }