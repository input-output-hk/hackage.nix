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
      identifier = { name = "HGraphStorage"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "JP Moresmau 2014-2015";
      maintainer = "JP Moresmau <jp@moresmau.fr>";
      author = "JP Moresmau <jp@moresmau.fr>";
      homepage = "https://github.com/JPMoresmau/HGraphStorage";
      url = "";
      synopsis = "Graph database stored on disk";
      description = "A graph database storing its data on disk.\nThere is currently no transaction or even concurrent access support, this is not made for production.\nWe try to store the data on disk efficiently, i.e. not rely on having the data in memory.\nThere is a test suite and a benchmark, which would be the best way to get a feel for how the library works.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          ];
        };
      tests = {
        "hgraphstorage-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HGraphStorage" or (buildDepError "HGraphStorage"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            ];
          };
        };
      benchmarks = {
        "HGraphStorage-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HGraphStorage" or (buildDepError "HGraphStorage"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."text-binary" or (buildDepError "text-binary"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }