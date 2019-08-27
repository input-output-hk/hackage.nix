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
      identifier = { name = "full-text-search"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013-2014 Duncan Coutts, 2014 Well-Typed LLP";
      maintainer = "Duncan Coutts <duncan@well-typed.com>";
      author = "Duncan Coutts";
      homepage = "";
      url = "";
      synopsis = "In-memory full text search engine";
      description = "An in-memory full text search engine library. It lets you\nrun full-text queries on a collection of your documents.\n\nFeatures:\n\n* Can search over any type of \\\"document\\\".\n(You explain how to extract search terms from them.)\n\n* Supports documents with multiple fields\n(e.g. title, body)\n\n* Supports documents with non-term features\n(e.g. quality score, page rank)\n\n* Uses the state of the art BM25F ranking function\n\n* Adjustable ranking parameters (including field weights\nand non-term feature scores)\n\n* In-memory but quite compact. It does not keep a copy of\nyour original documents.\n\nIt is independent of the document type, so you have to\nwrite the document-specific parts: extracting search terms\nand any case-normalisation or stemming. This is quite\neasy using libraries such as\n<http://hackage.haskell.org/package/tokenize tokenize> and\n<http://hackage.haskell.org/package/snowball snowball>.\n\nFor an example, see the code for the\n<http://hackage.haskell.org/package/hackage-server hackage-server>\nwhere it is used for the package search feature.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }