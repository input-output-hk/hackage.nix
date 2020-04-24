{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ])) ++ (pkgs.lib).optionals (flags.readline) [
          (hsPkgs."readline" or ((hsPkgs.pkgs-errors).buildDepError "readline"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }