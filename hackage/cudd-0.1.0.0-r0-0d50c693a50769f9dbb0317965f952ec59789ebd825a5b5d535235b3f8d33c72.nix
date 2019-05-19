{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cudd"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "https://github.com/adamwalker/haskell_cudd";
      url = "";
      synopsis = "Bindings to the CUDD binary decision diagrams library";
      description = "Bindings to the CUDD binary decision diagrams library.\n\n<http://vlsi.colorado.edu/~fabio/CUDD/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.transformers)
          ];
        libs = [
          (pkgs."cudd")
          (pkgs."mtr")
          (pkgs."st")
          (pkgs."util")
          (pkgs."epd")
          (pkgs."dddmp")
          (pkgs."m")
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      };
    }