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
    flags = { static = false; llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "PortFusion"; version = "1.0.3"; };
      license = "GPL-3.0-only";
      copyright = "Copyright © 2012 Cetin Sert";
      maintainer = "Cetin Sert <fusion@corsis.eu>";
      author = "Cetin Sert <fusion@corsis.eu>";
      homepage = "http://fusion.corsis.eu";
      url = "http://fusion.corsis.eu";
      synopsis = "CORSIS PortFusion : High-performance Distributed Proxy";
      description = "PortFusion is a minimalistic, cross-platform, transport-layer distributed reverse / forward proxy for TCP released under GPLv3.\n\nA single package that makes the most of each platform by tapping into their unique capabilities, combining this power with an intuitive interface, beautiful design and Haskell's excellent support for unprecedented levels of concurrency and parallelism.\n\nIt strives for the smallest source code size while delivering maximum throughput with near zero overhead.\n\n[Official Binaries]\nare available for download from <http://fusion.corsis.eu> for Windows, Linux, OS X and FreeBSD.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "PortFusion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."splice" or (errorHandler.buildDepError "splice"))
          ] ++ [ (hsPkgs."network" or (errorHandler.buildDepError "network")) ];
          buildable = true;
        };
      };
    };
  }