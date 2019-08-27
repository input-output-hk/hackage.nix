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
    flags = { development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "classy-miso"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Robert Fischer";
      maintainer = "smokejumperit+stack@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/Classy-Miso#README.md";
      url = "";
      synopsis = "Typeclass based support for Miso, the Tasty Web Framework for Haskell.";
      description = "Please see the README on Github at <https://github.com/RobertFischer/Classy-Miso#README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."miso" or (buildDepError "miso"))
          (hsPkgs."rfc" or (buildDepError "rfc"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."url" or (buildDepError "url"))
          ] ++ (pkgs.lib).optionals (compiler.isGhcjs && true) [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          ];
        };
      exes = {
        "classy-miso-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."classy-miso" or (buildDepError "classy-miso"))
            (hsPkgs."miso" or (buildDepError "miso"))
            (hsPkgs."rfc" or (buildDepError "rfc"))
            ];
          };
        };
      tests = {
        "ghcjs-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."classy-miso" or (buildDepError "classy-miso"))
            (hsPkgs."miso" or (buildDepError "miso"))
            (hsPkgs."rfc" or (buildDepError "rfc"))
            ];
          };
        };
      };
    }