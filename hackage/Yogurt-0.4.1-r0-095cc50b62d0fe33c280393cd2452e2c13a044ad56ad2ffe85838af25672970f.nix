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
          (hsPkgs.mtl)
          (hsPkgs.regex-posix)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [ (hsPkgs.base) (hsPkgs.base) (hsPkgs.syb) ]
          else [
            (hsPkgs.base)
            (hsPkgs.base)
            ])) ++ (pkgs.lib).optionals (flags.readline) [
          (hsPkgs.readline)
          (hsPkgs.process)
          (hsPkgs.network)
          ];
        };
      };
    }