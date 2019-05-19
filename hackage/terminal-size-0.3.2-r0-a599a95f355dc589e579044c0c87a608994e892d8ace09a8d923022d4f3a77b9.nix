{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "terminal-size"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Andreas Hammar, Matvey Aksenov";
      homepage = "";
      url = "";
      synopsis = "Get terminal window height and width";
      description = "Get terminal window height and width without ncurses dependency.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.6")) (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.process);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      };
    }