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
    flags = { readline = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Yogurt"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2008-2009 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "http://code.google.com/p/yogurt-mud/";
      url = "";
      synopsis = "A MUD client library";
      description = "Yogurt is a functional MUD client featuring prioritized, regex-based hooks, variables, timers, logging, dynamic loading of Yogurt scripts and more. For example programs, please see Yogurt's home page.\n\nThis package provides the library. To use Yogurt as a standalone executable and dynamically load and reload Yogurt scripts, please see package @Yogurt-Standalone@.\n\nIf you do not wish to install the readline-based command-line interface available in module @Network.Yogurt.Readline@, install using @cabal install Yogurt -f-readline@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (pkgs.lib).optionals (flags.readline) [
          (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }