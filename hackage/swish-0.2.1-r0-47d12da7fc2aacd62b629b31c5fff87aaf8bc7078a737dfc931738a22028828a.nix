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
      specVersion = "1.2";
      identifier = { name = "swish"; version = "0.2.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Vasili I Galchin (William Halchin) - vigalchin@gmail.com";
      author = "Graham Klyne - GK@ninebynine.org";
      homepage = "";
      url = "";
      synopsis = "A semantic web toolkit.";
      description = "Swish is a framework, written in the purely functional\nprogramming language Haskell, for performing deductions in\nRDF data using a variety of techniques. Swish is conceived\nas a toolkit for experimenting with RDF inference, and for\nimplementing stand-alone RDF file processors (usable in\nsimilar style to CWM, but with a view to being extensible\nin declarative style through added Haskell function and data\nvalue declarations). It explores Haskell as \"a scripting\nlanguage for the Semantic Web\".\nSwish is a work-in-progress, and currently incorporates:\n* Notation3 input and output.\n* RDF graph isomorphism testing and merging.\n* Display of differences between RDF graphs.\n* Inference operations in forward chaining, backward chaining and proof-checking modes.\n* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.\n* Class restriction rule implementation, primarily for datatype inferences.\n* RDF formal semantics entailment rule implementation.\n* Complete, ready-to-run, command-line and script-driven programs.\nReferences\n1) http://www.ninebynine.org/RDFNotes/Swish/Intro.html\n2) http://www.ninebynine.org/Software/swish-0.2.1.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          ];
        buildable = true;
        };
      exes = {
        "BuiltInMapTest" = { buildable = true; };
        "GraphPartitionTest" = { buildable = true; };
        "GraphTest" = { buildable = true; };
        "N3ParserTest" = { buildable = true; };
        "N3FormatterTest" = { buildable = true; };
        "RDFDatatypeXsdIntegerTest" = { buildable = true; };
        "RDFGraphTest" = { buildable = true; };
        "RDFProofContextTest" = { buildable = true; };
        "RDFProofText" = { buildable = true; };
        "RDFQueryTest" = { buildable = true; };
        "RDFRulesetTest" = { buildable = true; };
        "VarBindingTest" = { buildable = true; };
        "LookupMapTest" = { buildable = true; };
        "ParseTest" = { buildable = true; };
        "ParseURITest" = { buildable = true; };
        "QNameTest" = { buildable = true; };
        "URITest" = { buildable = true; };
        "SwishTest" = { buildable = true; };
        "Swish" = { buildable = true; };
        };
      };
    }