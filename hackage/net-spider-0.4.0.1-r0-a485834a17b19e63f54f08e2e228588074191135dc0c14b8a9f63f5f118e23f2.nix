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
    flags = { server-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "net-spider"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "A graph database middleware to maintain a time-varying graph.";
      description = "A graph database middleware to maintain a time-varying graph. See the [project README](https://github.com/debug-ito/net-spider) for detail.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."greskell-websocket" or (errorHandler.buildDepError "greskell-websocket"))
          (hsPkgs."greskell" or (errorHandler.buildDepError "greskell"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-interval" or (errorHandler.buildDepError "data-interval"))
          (hsPkgs."extended-reals" or (errorHandler.buildDepError "extended-reals"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."net-spider" or (errorHandler.buildDepError "net-spider"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        "server-test-suite" = {
          depends = (pkgs.lib).optionals (flags.server-test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."net-spider" or (errorHandler.buildDepError "net-spider"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."greskell-websocket" or (errorHandler.buildDepError "greskell-websocket"))
            (hsPkgs."greskell" or (errorHandler.buildDepError "greskell"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."hspec-need-env" or (errorHandler.buildDepError "hspec-need-env"))
            ];
          buildable = if flags.server-test then true else false;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            ];
          buildable = true;
          };
        };
      };
    }