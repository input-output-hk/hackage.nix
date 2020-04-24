{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "XSaiga"; version = "1.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peelar@uwindsor.ca";
      author = "Dr. Rahmatullah Hafiz, Dr. Richard Frost (rfrost@cogeco.ca), Shane Peelar, Paul Callaghan, and Eric Matthews";
      homepage = "http://speechweb2.cs.uwindsor.ca/solarman4/demo_sparql.html";
      url = "";
      synopsis = "An implementation of a polynomial-time top-down parser suitable for NLP";
      description = "This package contains a Haskell implementation of the X-SAIGA project's parser combinators. The combinators\nenable fully-general attribute grammars to be implemented as executable specifications. Although the parser\nis top-down, and therefore highly modular, left-recursive productions are allowed and fully-general synthesized\nand inherited attribute dependencies are also allowed. The parse tree, which is decorated with attribute values,\nis built as a compact Tomita-style graph. Lazy evaluation enables attribute values to be evaluated only as needed.\nTime and space complexity are both O(n^4) where n is the length of the input. An example natural-language interface (called Solarman)\nto a semantic-web style RDF triplestore with approximately 3,000 facts about the solar system has been built\nas an executable specification of an attribute grammar. Solarman is included in this archive.\nSolarman computes answers to queries using an event-based denotational semantics which is based on Montague and Davidsonian semantics.\nA web site [3] has been created so that readers can enter queries and find out more about Solarman.\n\n\\[1] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/PADL_08.pdf>\n\n\\[2] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/PADL_10.pdf>\n\n\\[3] <http://speechweb2.cs.uwindsor.ca/solarman4/demo_sparql.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."hsparql" or ((hsPkgs.pkgs-errors).buildDepError "hsparql"))
          (hsPkgs."rdf4h" or ((hsPkgs.pkgs-errors).buildDepError "rdf4h"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
          ];
        buildable = true;
        };
      exes = {
        "Solarman" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."cgi" or ((hsPkgs.pkgs-errors).buildDepError "cgi"))
            (hsPkgs."rdf4h" or ((hsPkgs.pkgs-errors).buildDepError "rdf4h"))
            (hsPkgs."hsparql" or ((hsPkgs.pkgs-errors).buildDepError "hsparql"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }