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
    flags = { examples = false; tests = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "miso"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 David M. Johnson";
      maintainer = "David M. Johnson <djohnson.m@gmail.com>";
      author = "David M. Johnson <djohnson.m@gmail.com>";
      homepage = "http://github.com/dmjio/miso";
      url = "";
      synopsis = "A tasty Haskell front-end framework";
      description = "Miso is a small isomorphic Haskell front-end framework featuring a virtual-dom, diffing / patching algorithm, event delegation, event batching, SVG, Server-sent events, Websockets, and an extensible Subscription-based subsystem. Inspired by Elm, Redux and Bobril. `IO` and other effects (like `XHR`) can be introduced into the system via the `Effect` data type. Miso makes heavy use of the GHCJS FFI and therefore has minimal dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."BoundedChan" or (buildDepError "BoundedChan"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ]
          else [
            (hsPkgs."lucid" or (buildDepError "lucid"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ]);
        };
      exes = {
        "todo-mvc" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          };
        "router" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            (hsPkgs."servant" or (buildDepError "servant"))
            ];
          };
        "websocket" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          };
        "mario" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          };
        "simple" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."miso" or (buildDepError "miso"))
            ];
          };
        "tests" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.tests)) [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."miso" or (buildDepError "miso"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-core" or (buildDepError "hspec-core"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            ];
          };
        };
      };
    }