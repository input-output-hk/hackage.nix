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
      identifier = { name = "miso"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 David M. Johnson";
      maintainer = "David M. Johnson <djohnson.m@gmail.com>";
      author = "David M. Johnson <djohnson.m@gmail.com>";
      homepage = "http://github.com/miso-haskell/miso";
      url = "";
      synopsis = "Haskell front-end framework";
      description = "Miso is a Haskell front-end framework featuring a virtual-dom, fast hand-rolled javascript diffing / patching algorithm, event delegation, event batching, SVG support, and an extensible Subscription-based subsystem. Inspired by Elm, Redux and Bobril, Miso currently supports WebSocket, Window, Mouse, History and KeysDown subscriptions. `IO` and other effects (such as `XHR`) can be introduced into the system via the `Effect` data type inside the `update` function. Pre-rendered templates and shared server-routing are made possible with servant. Minimal dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ]
          else [
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ]);
        buildable = true;
        };
      exes = {
        "todo-mvc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "mario" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.examples
            then false
            else true;
          };
        "simple" = {
          depends = [
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
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            ];
          buildable = if !(compiler.isGhcjs && true) || !flags.tests
            then false
            else true;
          };
        };
      };
    }