{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."Yogurt" or ((hsPkgs.pkgs-errors).buildDepError "Yogurt"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          libs = [
            (pkgs."readline" or ((hsPkgs.pkgs-errors).sysDepError "readline"))
            ];
          buildable = true;
          };
        };
      };
    }