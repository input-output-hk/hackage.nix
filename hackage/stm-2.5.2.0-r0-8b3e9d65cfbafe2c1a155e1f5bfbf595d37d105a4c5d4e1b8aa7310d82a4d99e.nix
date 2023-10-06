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
      identifier = { name = "stm"; version = "2.5.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "https://wiki.haskell.org/Software_transactional_memory";
      url = "";
      synopsis = "Software Transactional Memory";
      description = "Software Transactional Memory, or STM, is an abstraction for\nconcurrent communication. The main benefits of STM are\n/composability/ and /modularity/. That is, using STM you can write\nconcurrent abstractions that can be easily composed with any other\nabstraction built using STM, without exposing the details of how\nyour abstraction ensures safety. This is typically not the case\nwith other forms of concurrent communication, such as locks or\n'MVar's.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (errorHandler.buildDepError "nats"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      };
    }