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
    flags = { hint-test = true; server-test = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "greskell"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/greskell/";
      url = "";
      synopsis = "Haskell binding for Gremlin graph query language";
      description = "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).\nSee [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.\n\nThis package is the main entry point of greskell family.\nIt re-exports [greskell-core](http://hackage.haskell.org/package/greskell-core) package,\nand adds some useful functions to it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."greskell-core" or (errorHandler.buildDepError "greskell-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."greskell" or (errorHandler.buildDepError "greskell"))
            (hsPkgs."greskell-core" or (errorHandler.buildDepError "greskell-core"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            ];
          buildable = true;
          };
        "hint-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."greskell" or (errorHandler.buildDepError "greskell"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            ];
          buildable = if !flags.hint-test then false else true;
          };
        "server-test-suite" = {
          depends = (pkgs.lib).optionals (flags.server-test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."greskell" or (errorHandler.buildDepError "greskell"))
            (hsPkgs."greskell-core" or (errorHandler.buildDepError "greskell-core"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."greskell-websocket" or (errorHandler.buildDepError "greskell-websocket"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            ];
          buildable = if flags.server-test then true else false;
          };
        };
      };
    }