{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "copilot-c99"; version = "3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Frank Dedden <dev@dedden.net>";
      author = "Frank Dedden\n, Alwyn Goodloe";
      homepage = "";
      url = "";
      synopsis = "A compiler for Copilot targeting C99.";
      description = "This package is a back-end from Copilot to C.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/Copilot-Language/copilot-discussion>.\n\nExamples are available at\n<https://github.com/Copilot-Language/Copilot/tree/master/Examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."copilot-core" or ((hsPkgs.pkgs-errors).buildDepError "copilot-core"))
          (hsPkgs."language-c99" or ((hsPkgs.pkgs-errors).buildDepError "language-c99"))
          (hsPkgs."language-c99-util" or ((hsPkgs.pkgs-errors).buildDepError "language-c99-util"))
          (hsPkgs."language-c99-simple" or ((hsPkgs.pkgs-errors).buildDepError "language-c99-simple"))
          ];
        buildable = true;
        };
      };
    }