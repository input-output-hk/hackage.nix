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
    flags = { debug = false; conduit11 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "ig"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2014 Prowdsponsor";
      maintainer = "Prowdsponsor <opensource@prowdsponsor.com>";
      author = "Felipe Lessa <felipe.lessa@prowdsponsor.com>, JP Moresmau <jpmoresmau@gmail.com>";
      homepage = "https://github.com/prowdsponsor/ig";
      url = "";
      synopsis = "Bindings to Instagram's API.";
      description = "This package exports bindings to Instagram's APIs (see\n<http://instagram.com/developer/>).\n\nWhile we would like to have a complete binding to Instagram's\nAPI, this package is being developed on demand. If you need\nsomething that has not been implemented yet, please send a pull\nrequest or file an issue on GitHub\n(<https://github.com/prowdsponsor/ig/issues>).\n\nA sample Yesod application demonstrating the API can be found at <https://github.com/prowdsponsor/ig-testapp>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."cryptohash-cryptoapi" or (buildDepError "cryptohash-cryptoapi"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          ] ++ (if flags.conduit11
          then [
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            ]
          else [
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
            ]);
        };
      };
    }