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
    flags = {
      use-template-haskell = true;
      use-reflex-optimizer = false;
      expose-all-unfoldings = false;
      profile-reflex = false;
      split-these = true;
      };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "reflex-dom-core"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "";
      url = "";
      synopsis = "Functional Reactive Web Apps with Reflex";
      description = "Reflex-DOM is a Functional Reactive web framework based on the Reflex FRP engine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."bimap" or (buildDepError "bimap"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
          (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
          (hsPkgs."dependent-sum-template" or (buildDepError "dependent-sum-template"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exception-transformers" or (buildDepError "exception-transformers"))
          (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
          (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
          (hsPkgs."keycode" or (buildDepError "keycode"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
          (hsPkgs."reflex" or (buildDepError "reflex"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."zenc" or (buildDepError "zenc"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            ]
          else (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix")))) ++ (if flags.split-these
          then [
            (hsPkgs."semialign" or (buildDepError "semialign"))
            (hsPkgs."these" or (buildDepError "these"))
            ]
          else [
            (hsPkgs."these" or (buildDepError "these"))
            ])) ++ (if flags.use-template-haskell
          then [
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."dependent-sum-template" or (buildDepError "dependent-sum-template"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ]
          else [ (hsPkgs."dependent-sum" or (buildDepError "dependent-sum")) ]);
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          buildable = true;
          };
        "hydration" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."chrome-test-utils" or (buildDepError "chrome-test-utils"))
            (hsPkgs."constraints" or (buildDepError "constraints"))
            (hsPkgs."constraints-extras" or (buildDepError "constraints-extras"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."dependent-map" or (buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."dependent-sum-template" or (buildDepError "dependent-sum-template"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."hspec-webdriver" or (buildDepError "hspec-webdriver"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
            (hsPkgs."jsaddle-warp" or (buildDepError "jsaddle-warp"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."reflex-dom-core" or (buildDepError "reflex-dom-core"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."webdriver" or (buildDepError "webdriver"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."which" or (buildDepError "which"))
            ];
          buildable = if !system.isLinux || !system.isX86_64 || flags.profile-reflex
            then false
            else true;
          };
        "gc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chrome-test-utils" or (buildDepError "chrome-test-utils"))
            (hsPkgs."jsaddle" or (buildDepError "jsaddle"))
            (hsPkgs."jsaddle-warp" or (buildDepError "jsaddle-warp"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."reflex" or (buildDepError "reflex"))
            (hsPkgs."reflex-dom-core" or (buildDepError "reflex-dom-core"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !system.isLinux || !system.isX86_64
            then false
            else true;
          };
        };
      };
    }