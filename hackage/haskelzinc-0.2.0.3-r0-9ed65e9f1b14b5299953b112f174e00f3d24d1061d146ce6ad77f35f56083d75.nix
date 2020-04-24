{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskelzinc"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "klara.mar@cs.kuleuven.be";
      author = "Klara Marntirosian";
      homepage = "";
      url = "";
      synopsis = "CP in Haskell through MiniZinc";
      description = "This package was created in the context of the <https://www.graceful-project.eu/ GRACeFUL project>).\n\nThe haskelzinc library defines an interface to the MiniZinc 2.0 constraint proramming language. It provides a Haskell abstract syntax tree for the MiniZinc language, with which one can represent MiniZinc models in Haskell, a pretty printer to print the representation of a MiniZinc model in MiniZinc and a parser that returns a representation of the solutions obtained by running the MiniZinc model.\n\nAn additional module gives the possibility to directly get the solutions of a MiniZinc finite domain model. Option for interactive interface is provided, as well as choice between two solvers: the G12/FD built-in solver of FlatZinc and choco3.";
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