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
    flags = { example = false; test-client = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "react-flux"; version = "0.9.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Lenz <wuzzeb@gmail.com>";
      author = "John Lenz <wuzzeb@gmail.com>";
      homepage = "https://bitbucket.org/wuzzeb/react-flux";
      url = "";
      synopsis = "A binding to React based on the Flux application architecture for GHCJS";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"));
        buildable = true;
        };
      exes = {
        "todo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."react-flux" or (errorHandler.buildDepError "react-flux"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = if !flags.example then false else true;
          };
        "test-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."react-flux" or (errorHandler.buildDepError "react-flux"))
            ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"));
          buildable = if !flags.test-client then false else true;
          };
        "route-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."react-flux" or (errorHandler.buildDepError "react-flux"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"));
          buildable = if !flags.example then false else true;
          };
        };
      };
    }