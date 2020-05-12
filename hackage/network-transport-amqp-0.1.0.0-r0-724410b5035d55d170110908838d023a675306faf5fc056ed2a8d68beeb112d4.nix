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
    flags = { distributed-process-tests = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "network-transport-amqp"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "AMQP-based transport layer for distributed-process (aka Cloud Haskell)";
      description = "AMQP-based transport layer for distributed-process (aka Cloud Haskell)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."lens-family-th" or (errorHandler.buildDepError "lens-family-th"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "amqp-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-amqp" or (errorHandler.buildDepError "network-transport-amqp"))
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."network-transport-tests" or (errorHandler.buildDepError "network-transport-tests"))
            ];
          buildable = true;
          };
        "api-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-amqp" or (errorHandler.buildDepError "network-transport-amqp"))
            (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."network-transport-tests" or (errorHandler.buildDepError "network-transport-tests"))
            ];
          buildable = true;
          };
        };
      };
    }