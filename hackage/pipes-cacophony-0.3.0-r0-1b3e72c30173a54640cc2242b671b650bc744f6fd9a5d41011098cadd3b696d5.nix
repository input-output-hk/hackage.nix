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
    flags = { hlint = true; build-examples = false; llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-cacophony"; version = "0.3.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jgalt@centromere.net";
      author = "John Galt";
      homepage = "https://github.com/centromere/pipes-cacophony";
      url = "";
      synopsis = "Pipes for Noise-secured network connections.";
      description = "A set of pipes to secure network connections with the\n<https://github.com/trevp/noise/blob/master/noise.md Noise> protocol.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cacophony" or (errorHandler.buildDepError "cacophony"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
        ];
        buildable = true;
      };
      exes = {
        "loopback" = {
          depends = pkgs.lib.optionals (flags.build-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cacophony" or (errorHandler.buildDepError "cacophony"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-cacophony" or (errorHandler.buildDepError "pipes-cacophony"))
          ];
          buildable = if flags.build-examples then true else false;
        };
      };
      tests = {
        "hlint" = {
          depends = pkgs.lib.optionals (!!flags.hlint) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = if !flags.hlint then false else true;
        };
      };
    };
  }