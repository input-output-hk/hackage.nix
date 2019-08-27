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
      specVersion = "0";
      identifier = { name = "hasparql-client"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luiz Damascena";
      author = "Luiz Damascena <luizscence@gmail.com>";
      homepage = "https://github.com/lhpaladin/HaSparql-Client";
      url = "";
      synopsis = "This package enables to write SPARQL queries to remote endpoints.";
      description = "This package enables to write SPARQL queries to remote endpoints. It provides many of the options provided through the SPARQL protocol.\nIt was inspired by HSparql and SPARQL Python Wrapper (Python). For more information see also:\nhttp://www.w3.org/TR/rdf-sparql-protocol/\nhttp://www.w3.org/2005/sparql-results#\nTODO list:\nAdd internal conversion to RDFXML, N3, Turtle and JSON.\nImplement a parser to validate SPARQL queries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        };
      };
    }