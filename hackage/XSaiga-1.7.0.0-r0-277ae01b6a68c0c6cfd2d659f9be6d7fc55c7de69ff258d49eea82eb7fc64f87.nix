{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { asterius = false; instore = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "XSaiga"; version = "1.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Shane Peelar <peelar@uwindsor.ca>";
      author = "Dr. Rahmatullah Hafiz, Dr. Richard Frost <rfrost@cogeco.ca>, Shane Peelar, Paul Callaghan, Eric Matthews";
      homepage = "http://speechweb2.cs.uwindsor.ca/solarman4/demo_sparql.html";
      url = "";
      synopsis = "An implementation of a polynomial-time top-down parser suitable for NLP";
      description = "This package contains a Haskell implementation of the X-SAIGA project's parser combinators. The combinators\nenable fully-general attribute grammars to be implemented as executable specifications. Although the parser\nis top-down, and therefore highly modular, left-recursive productions are allowed and fully-general synthesized\nand inherited attribute dependencies are also allowed. The parse tree, which is decorated with attribute values,\nis built as a compact Tomita-style graph. Lazy evaluation enables attribute values to be evaluated only as needed.\nTime and space complexity are both O(n^4) where n is the length of the input. An example natural-language interface (called Solarman)\nto a semantic-web style RDF triplestore with approximately 3,000 facts about the solar system has been built\nas an executable specification of an attribute grammar. Solarman is included in this archive.\nSolarman computes answers to queries using an event-based denotational semantics which is based on Montague and Davidsonian semantics.\nA web site [3] has been created so that readers can enter queries and find out more about Solarman.\n\n\\[1] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/PADL_08.pdf>\n\n\\[2] <http://cs.uwindsor.ca/~richard/PUBLICATIONS/PADL_10.pdf>\n\n\\[3] <http://speechweb2.cs.uwindsor.ca/solarman4/demo_sparql.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-constructors" or (errorHandler.buildDepError "data-constructors"))
          (hsPkgs."fastcgi" or (errorHandler.buildDepError "fastcgi"))
          (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hsparql" or (errorHandler.buildDepError "hsparql"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."rdf4h" or (errorHandler.buildDepError "rdf4h"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!flags.instore) (hsPkgs."network" or (errorHandler.buildDepError "network"))) ++ (pkgs.lib).optional (flags.asterius) (hsPkgs."asterius-prelude" or (errorHandler.buildDepError "asterius-prelude"));
        buildable = true;
        };
      exes = {
        "solarman.cgi" = {
          depends = ([
            (hsPkgs."XSaiga" or (errorHandler.buildDepError "XSaiga"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-constructors" or (errorHandler.buildDepError "data-constructors"))
            (hsPkgs."fastcgi" or (errorHandler.buildDepError "fastcgi"))
            (hsPkgs."generic-data" or (errorHandler.buildDepError "generic-data"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hsparql" or (errorHandler.buildDepError "hsparql"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."rdf4h" or (errorHandler.buildDepError "rdf4h"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (pkgs.lib).optional (!flags.instore) (hsPkgs."network" or (errorHandler.buildDepError "network"))) ++ (pkgs.lib).optional (flags.asterius) (hsPkgs."asterius-prelude" or (errorHandler.buildDepError "asterius-prelude"));
          buildable = true;
          };
        };
      };
    }