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
      identifier = { name = "http-reverse-proxy"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/http-reverse-proxy";
      url = "";
      synopsis = "Reverse proxy HTTP requests, either over raw sockets or with WAI";
      description = "Provides a simple means of reverse-proxying HTTP requests. The raw approach uses the same technique as leveraged by keter, whereas the WAI approach performs full request/response parsing via WAI and http-conduit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."word8" or (buildDepError "word8"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."basic-prelude" or (buildDepError "basic-prelude"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."http-reverse-proxy" or (buildDepError "http-reverse-proxy"))
            (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            ];
          };
        };
      };
    }