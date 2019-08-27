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
      identifier = { name = "reload"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 JP Moresmau";
      maintainer = "jpmoresmau@gmail.com";
      author = "JP Moresmau";
      homepage = "https://github.com/jpmoresmau/dbIDE/reload#readme";
      url = "";
      synopsis = "A web based Haskell IDE";
      description = "Provides a web based Haskell IDE, on top of Ghcid";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai-handler-launch" or (buildDepError "wai-handler-launch"))
          (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."ghcid" or (buildDepError "ghcid"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ];
        };
      exes = {
        "reload-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."reload" or (buildDepError "reload"))
            ];
          };
        };
      tests = {
        "reload-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."hspec-wai-json" or (buildDepError "hspec-wai-json"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."scotty" or (buildDepError "scotty"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mime-types" or (buildDepError "mime-types"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai-handler-launch" or (buildDepError "wai-handler-launch"))
            (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."ghcid" or (buildDepError "ghcid"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        };
      };
    }