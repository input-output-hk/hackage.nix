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
      identifier = { name = "mongoDB"; version = "2.4.0.1"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2010-2012 10gen Inc.";
      maintainer = "Victor Denisov <denisovenator@gmail.com>";
      author = "Tony Hannan";
      homepage = "https://github.com/mongodb-haskell/mongodb";
      url = "";
      synopsis = "Driver (client) for MongoDB, a free, scalable, fast, document\nDBMS";
      description = "This package lets you connect to MongoDB servers and\nupdate/query their data. Please see the example in\nDatabase.MongoDB and the tutorial from the homepage. For\ninformation about MongoDB itself, see www.mongodb.org.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bson" or (buildDepError "bson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."hashtables" or (buildDepError "hashtables"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."nonce" or (buildDepError "nonce"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bson" or (buildDepError "bson"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."nonce" or (buildDepError "nonce"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."hashtables" or (buildDepError "hashtables"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }