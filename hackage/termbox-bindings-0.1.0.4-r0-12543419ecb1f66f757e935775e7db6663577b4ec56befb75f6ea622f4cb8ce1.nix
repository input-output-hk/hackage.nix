{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "termbox-bindings"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "neuman.vong@gmail.com";
      author = "Neuman Vong";
      homepage = "https://github.com/luciferous/termbox-bindings";
      url = "";
      synopsis = "Bindings to the Termbox library";
      description = "Bindings to the Termbox library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."termbox-bindings" or ((hsPkgs.pkgs-errors).buildDepError "termbox-bindings"))
            ];
          buildable = true;
          };
        };
      };
    }