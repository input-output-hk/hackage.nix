let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."parsec3" or (buildDepError "parsec3"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }