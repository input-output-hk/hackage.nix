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
    flags = {
      small_base = false;
      tests = false;
      hpc = true;
      network-uri = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "rdf4h"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Calvin Smith, Rob Stewart, Slava Kravchenko";
      maintainer = "Rob Stewart <robstewart@gmail.com>";
      author = "Calvin Smith, Rob Stewart, Slava Kravchenko";
      homepage = "https://github.com/robstewart57/rdf4h";
      url = "";
      synopsis = "A library for RDF processing in Haskell";
      description = "'RDF for Haskell' is a library for working with RDF in Haskell.\nAt present it includes parsers and serializers for RDF in the N-Triples\nand Turtle, and parsing support for RDF/XML. It provides abilities such as querying\nfor triples  containing a particular subject, predicate, or object, or\nselecting triples that satisfy an arbitrary predicate function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ [
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        };
      exes = {
        "rdf4h" = {
          depends = (([
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        };
      tests = {
        "test-rdf4h" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."knob" or (buildDepError "knob"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))) ++ [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          };
        };
      };
    }