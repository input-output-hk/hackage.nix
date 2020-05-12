{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { examples = false; tests = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "miso"; version = "0.11.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 David M. Johnson";
      maintainer = "David M. Johnson <djohnson.m@gmail.com>";
      author = "David M. Johnson <djohnson.m@gmail.com>";
      homepage = "http://github.com/dmjio/miso";
      url = "";
      synopsis = "A tasty Haskell front-end framework";
      description = "Miso is a small \"isomorphic\" Haskell front-end framework featuring a virtual-dom, diffing / patching algorithm, event delegation, event batching, SVG, Server-sent events, Websockets, type-safe servant-style routing and an extensible Subscription-based subsystem. Inspired by Elm, Redux and Bobril. Miso is pure by default, but side effects (like XHR) can be introduced into the system via the Effect data type. Miso makes heavy use of the GHCJS FFI and therefore has minimal dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ]
          else [
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."servant-lucid" or (errorHandler.buildDepError "servant-lucid"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ]);
        buildable = true;
        };
      exes = {
        "todo-mvc" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "threejs" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "file-reader" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "xhr" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "canvas2d" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "router" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "websocket" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "mario" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "svg" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "compose-update" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "simple" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "tests" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.tests)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.tests
            then false
            else true;
          };
        };
      };
    }