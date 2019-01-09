{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "termbox-bindings"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "neuman.vong@gmail.com";
      author = "Neuman Vong";
      homepage = "github.com/luciferous/termbox-bindings";
      url = "";
      synopsis = "Bindings to the termbox library";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = [ (pkgs."termbox") ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      exes = {
        "example" = { depends = [ (hsPkgs.base) (hsPkgs.termbox-bindings) ]; };
        };
      };
    }