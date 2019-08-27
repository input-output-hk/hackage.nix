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
      identifier = { name = "delta-h"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pitekus@gmail.com";
      author = "Grzegorz Chrupala and Afra Alishahi";
      homepage = "https://bitbucket.org/gchrupala/delta-h";
      url = "";
      synopsis = "Online entropy-based model of lexical category acquisition.";
      description = "Implementation of the model described in Grzegorz Chrupała\nand Afra Alishahi, Online Entropy-based Model of\nLexical Category Acquisition, CoNLL 2010\n<http://www.lsv.uni-saarland.de/personalPages/gchrupala/papers/conll-2010.pdf>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "delta-h" = {
          depends = [
            (hsPkgs."nlp-scores" or (buildDepError "nlp-scores"))
            (hsPkgs."monad-atom" or (buildDepError "monad-atom"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }