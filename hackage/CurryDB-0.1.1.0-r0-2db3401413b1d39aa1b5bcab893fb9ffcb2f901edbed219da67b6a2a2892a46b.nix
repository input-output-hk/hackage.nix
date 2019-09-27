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
      identifier = { name = "CurryDB"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "";
      url = "";
      synopsis = "CurryDB: In-memory Key/Value Database";
      description = "CurryDB: Simple, Persistent, Polymorphic, Transactional, In-memory Key/Value Database";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."blaze-textual" or (buildDepError "blaze-textual"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."array" or (buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "curry-memcached" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
            (hsPkgs."CurryDB" or (buildDepError "CurryDB"))
            ];
          buildable = true;
          };
        "curry-redis" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."CurryDB" or (buildDepError "CurryDB"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          buildable = true;
          };
        "hspec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."CurryDB" or (buildDepError "CurryDB"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "curry-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mersenne-random-pure64" or (buildDepError "mersenne-random-pure64"))
            (hsPkgs."CurryDB" or (buildDepError "CurryDB"))
            ];
          buildable = true;
          };
        };
      };
    }