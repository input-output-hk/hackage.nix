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
      specVersion = "1.10";
      identifier = { name = "transient-universe"; version = "0.4.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "http://www.fpcomplete.com/user/agocorona";
      url = "";
      synopsis = "Distributed computing with algebraic/monadic composability, map-reduce";
      description = "See <http://github.com/agocorona/transient>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transient" or (errorHandler.buildDepError "transient"))
          ] ++ (if compiler.isGhcjs && (compiler.version).ge "0.1"
          then [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-prim" or (errorHandler.buildDepError "ghcjs-prim"))
            ]
          else [
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."TCache" or (errorHandler.buildDepError "TCache"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            ]);
        buildable = true;
        };
      exes = {
        "monitorService" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && (compiler.version).ge "0.1")) [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transient" or (errorHandler.buildDepError "transient"))
            (hsPkgs."transient-universe" or (errorHandler.buildDepError "transient-universe"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-transient" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && (compiler.version).ge "0.1")) [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transient" or (errorHandler.buildDepError "transient"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."TCache" or (errorHandler.buildDepError "TCache"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            ];
          buildable = true;
          };
        };
      };
    }