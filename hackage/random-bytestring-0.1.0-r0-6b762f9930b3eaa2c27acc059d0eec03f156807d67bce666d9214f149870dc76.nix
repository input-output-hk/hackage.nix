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
      specVersion = "1.18";
      identifier = { name = "random-bytestring"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2017 Lars Kuhtz <lakuhtz@gmail.com>";
      maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
      author = "Lars Kuhtz <lakuhtz@gmail.com>";
      homepage = "https://www.github.com/larskuhtz/random-bytestring";
      url = "";
      synopsis = "Efficient generation of random bytestrings";
      description = "Efficient generation of random bytestrings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
        buildable = true;
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."random-bytestring" or (errorHandler.buildDepError "random-bytestring"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
          buildable = true;
          };
        "benchmark-compare" = {
          depends = [
            (hsPkgs."random-bytestring" or (errorHandler.buildDepError "random-bytestring"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
          buildable = true;
          };
        "eventlog-compare" = {
          depends = [
            (hsPkgs."random-bytestring" or (errorHandler.buildDepError "random-bytestring"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }