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
    flags = { browser = false; development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rfc"; version = "0.0.0.24"; };
      license = "BSD-3-Clause";
      copyright = "(c)2018 Robert Fischer";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#README.md";
      url = "";
      synopsis = "Robert Fischer's Common library";
      description = "An enhanced Prelude and various utilities for Aeson, Servant, PSQL, and Redis that Robert Fischer uses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
          (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."time-units" or (buildDepError "time-units"))
          (hsPkgs."aeson-diff" or (buildDepError "aeson-diff"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."freer-simple" or (buildDepError "freer-simple"))
          (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
          (hsPkgs."url" or (buildDepError "url"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          ] ++ (pkgs.lib).optionals (flags.browser) [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."miso" or (buildDepError "miso"))
          (hsPkgs."servant" or (buildDepError "servant"))
          ]) ++ (pkgs.lib).optionals (!flags.browser) [
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-docs" or (buildDepError "servant-docs"))
          (hsPkgs."servant-blaze" or (buildDepError "servant-blaze"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-cors" or (buildDepError "wai-cors"))
          (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
          (hsPkgs."hedis" or (buildDepError "hedis"))
          (hsPkgs."simple-logger" or (buildDepError "simple-logger"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."servant-swagger" or (buildDepError "servant-swagger"))
          (hsPkgs."swagger2" or (buildDepError "swagger2"))
          (hsPkgs."markdown" or (buildDepError "markdown"))
          (hsPkgs."servant-client" or (buildDepError "servant-client"))
          (hsPkgs."binary" or (buildDepError "binary"))
          ];
        };
      };
    }