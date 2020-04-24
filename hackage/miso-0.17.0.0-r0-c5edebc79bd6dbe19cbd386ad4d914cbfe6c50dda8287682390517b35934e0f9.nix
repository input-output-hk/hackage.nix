{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; tests = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "miso"; version = "0.17.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2018 David M. Johnson";
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ]
          else [
            (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
            (hsPkgs."servant-lucid" or ((hsPkgs.pkgs-errors).buildDepError "servant-lucid"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ]);
        buildable = true;
        };
      exes = {
        "todo-mvc" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "threejs" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "file-reader" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "xhr" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "canvas2d" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "router" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "websocket" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "mario" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "svg" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "compose-update" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "simple" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "tests" = {
          depends = (pkgs.lib).optionals (!(!(compiler.isGhcjs && true) || !flags.tests)) [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."miso" or ((hsPkgs.pkgs-errors).buildDepError "miso"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.tests
            then false
            else true;
          };
        };
      };
    }