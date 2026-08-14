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
    flags = { examples = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "fuyu-gpio"; version = "0.0.9.0"; };
      license = "LGPL-2.1-or-later";
      copyright = "";
      maintainer = "sebastian11medrano@gmail.com";
      author = "BassGT";
      homepage = "";
      url = "";
      synopsis = "High-level, type-safe interface for Linux GPIO (libgpiod v2).";
      description = "High-level, type-safe, and resource-managed Haskell interface for Linux GPIO character devices using libgpiod v2. Built on top of fuyu-gpio-direct, fuyu-gpio provides automatic memory management (bracket / with* style), typed exception handling, metadata snapshots, and zero-copy vector operations for high-performance GPIO I/O.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fuyu-gpio-direct" or (errorHandler.buildDepError "fuyu-gpio-direct"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "01-blink" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fuyu-gpio" or (errorHandler.buildDepError "fuyu-gpio"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "02-button" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fuyu-gpio" or (errorHandler.buildDepError "fuyu-gpio"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "03-led-and-button" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fuyu-gpio" or (errorHandler.buildDepError "fuyu-gpio"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "04-line-watch" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fuyu-gpio" or (errorHandler.buildDepError "fuyu-gpio"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "05-request-config" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fuyu-gpio" or (errorHandler.buildDepError "fuyu-gpio"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }