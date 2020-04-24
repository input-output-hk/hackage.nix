{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskelzinc"; version = "0.3.0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "klara.mar@cs.kuleuven.be";
      author = "Klara Marntirosian";
      homepage = "";
      url = "";
      synopsis = "CP in Haskell through MiniZinc";
      description = "This package was created in the context of the <https://www.graceful-project.eu GRACeFUL project>.\n\nThe haskelzinc library defines an interface to the MiniZinc 2.1 constraint proramming\nlanguage. It provides a Haskell abstract syntax tree for the MiniZinc language, with\nwhich one can represent MiniZinc models in Haskell, a pretty printer to print the\nrepresentation of a MiniZinc model in MiniZinc, a parser that returns a\nrepresentation of the solutions obtained by running the MiniZinc model and a set of\nfunctions useful for building a custom FlatZinc solutions parser.\n\nAn additional module gives the possibility to directly get the solutions of a\nMiniZinc finite domain model. Option for interactive interface is provided, as well\nas choice between two solvers: the G12/FD built-in solver of FlatZinc and choco3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."parsec3" or ((hsPkgs.pkgs-errors).buildDepError "parsec3"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }