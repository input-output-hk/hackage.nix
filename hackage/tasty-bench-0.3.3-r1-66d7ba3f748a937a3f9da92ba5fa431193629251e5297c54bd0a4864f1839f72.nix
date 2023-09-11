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
    flags = { tasty = true; debug = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "tasty-bench"; version = "0.3.3"; };
      license = "MIT";
      copyright = "2021 Andrew Lelechenko";
      maintainer = "Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/tasty-bench";
      url = "";
      synopsis = "Featherlight benchmark framework";
      description = "Featherlight framework (only one file!)\nfor performance measurement with API mimicking\n@criterion@ and @gauge@, featuring built-in comparison\nagainst previous runs and between benchmarks. Our benchmarks are just\nregular @tasty@ tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optionals (flags.tasty) [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
        };
      benchmarks = {
        "bench-fibo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            ];
          buildable = true;
          };
        };
      };
    }