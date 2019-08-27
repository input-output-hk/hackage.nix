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
      specVersion = "1.8";
      identifier = { name = "XSaiga"; version = "1.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peelar@uwindsor.ca";
      author = "Dr. Rahmatullah Hafiz, Dr. Richard Frost (rfrost@cogeco.ca), Shane Peelar, Paul Callaghan, and Eric Matthews";
      homepage = "http://hafiz.myweb.cs.uwindsor.ca/proHome.html";
      url = "";
      synopsis = "An implementation of a polynomial-time top-down parser suitable for NLP";
      description = "This package contains a Haskell implementation of the X-SAIGA project's parser combinators. The combinators\nenable fully-general attribute grammars to be implemented as executable specifications. Although the parser\nis top-down, and therefore highly modular, left-recursive productions are allowed and fully-general synthesized\nand inherited attribute dependencies are also allowed. The parse tree, which is decorated with attribute values,\nis built as a compact Tomita-style graph. Lazy evaluation enables attribute values to be evaluated only as needed.\nTime and space complexity are both O(n^4) where n is the length of the input. An example natural-language interface (called Solarman)\nto a semantic-web style RDF triplestore with approximately 3,000 facts about the solar system has been built\nas an executable specification of an attribute grammar. Solarman is included in this archive.\nSolarman computes answers to queries using an event-based denotational semantics which is based on Montague and Davidsonian semantics.\nA web site [4] has been created so that readers can enter queries and find out more about Solarman.\n\n\\[1] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/PADL_08.pdf>\n\n\\[2] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/PADL_10.pdf>\n\n\\[3] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/ESWC_DEMO.pdf>\n\n\\[4] <http://speechweb2.cs.uwindsor.ca/solarman/demo_sparql.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."hsparql" or (buildDepError "hsparql"))
          (hsPkgs."rdf4h" or (buildDepError "rdf4h"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        };
      exes = {
        "Solarman" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."rdf4h" or (buildDepError "rdf4h"))
            (hsPkgs."hsparql" or (buildDepError "hsparql"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."XSaiga" or (buildDepError "XSaiga"))
            ];
          };
        };
      };
    }