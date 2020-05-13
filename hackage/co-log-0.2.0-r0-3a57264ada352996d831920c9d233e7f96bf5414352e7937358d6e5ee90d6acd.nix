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
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "co-log"; version = "0.2.0"; };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik, Alexander Vershilov";
      homepage = "https://github.com/kowainik/co-log";
      url = "";
      synopsis = "Composable Contravariant Comonadic Logging Library";
      description = "The default implementation of logging based on [co-log-core](http://hackage.haskell.org/package/co-log-core).\n\nThe ideas behind this package are described in the following blog post:\n\n* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."typerep-map" or (errorHandler.buildDepError "typerep-map"))
          ];
        buildable = true;
        };
      exes = {
        "play-colog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."co-log" or (errorHandler.buildDepError "co-log"))
            (hsPkgs."typerep-map" or (errorHandler.buildDepError "typerep-map"))
            ];
          buildable = true;
          };
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."co-log" or (errorHandler.buildDepError "co-log"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit")))
            ];
          buildable = true;
          };
        };
      };
    }