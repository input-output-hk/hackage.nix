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
    flags = { enable-examples = false; enable-doctests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "libstackexchange"; version = "0.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov, Dmitry Malikov";
      homepage = "https://github.com/supki/libstackexchange";
      url = "";
      synopsis = "StackExchange API interface";
      description = "Provides interface for StackExchange v2.1 API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "rep-watcher" = {
          depends = [
            (hsPkgs."aeson-lens" or (errorHandler.buildDepError "aeson-lens"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."libstackexchange" or (errorHandler.buildDepError "libstackexchange"))
            ];
          buildable = if !flags.enable-examples then false else true;
          };
        "badges-watcher" = {
          depends = [
            (hsPkgs."aeson-lens" or (errorHandler.buildDepError "aeson-lens"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."libstackexchange" or (errorHandler.buildDepError "libstackexchange"))
            ];
          buildable = if !flags.enable-examples then false else true;
          };
        "server-side-authentication" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."libstackexchange" or (errorHandler.buildDepError "libstackexchange"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = if !flags.enable-examples then false else true;
          };
        };
      tests = {
        "api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."libstackexchange" or (errorHandler.buildDepError "libstackexchange"))
            ];
          buildable = if !flags.enable-doctests then false else true;
          };
        };
      };
    }