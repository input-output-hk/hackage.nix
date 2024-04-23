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
      specVersion = "1.2";
      identifier = { name = "Yogurt-Standalone"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "Some Rights Reserved (CC) 2008-2009 Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen";
      homepage = "http://code.google.com/p/yogurt-mud/";
      url = "";
      synopsis = "A functional MUD client";
      description = "Yogurt is a functional MUD client featuring prioritized, regex-based hooks, variables, timers, logging, dynamic loading of Yogurt scripts and more. For example programs, please see Yogurt's home page.\n\nThis is the standalone executable built on top of the Yogurt library. Invoke @yogurt@ on a Haskell file that defines one or more sessions to have it load that module and connect to the specified MUD. See module @Network.Yogurt.Session@ in package Yogurt for more details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yogurt" = {
          depends = [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."Yogurt" or (errorHandler.buildDepError "Yogurt"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]);
          libs = [ (pkgs."readline" or (errorHandler.sysDepError "readline")) ];
          buildable = true;
        };
      };
    };
  }