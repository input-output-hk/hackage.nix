{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "gi-cairo-connector"; version = "0.0.1"; };
      license = "LGPL-2.1-only";
      copyright = "(c) 2018 Kilian Kilger, Iñaki García Etxebarria";
      maintainer = "Kilian Kilger (kkilger@gmail.com)";
      author = "Iñaki García Etxebarria,\nKilian Kilger";
      homepage = "https://github.com/cohomology/gi-cairo-render";
      url = "";
      synopsis = "GI friendly Binding to the Cairo library.";
      description = "This library contains glue code used to interconnect Haskell GI and Cairo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
          (hsPkgs."gi-cairo" or ((hsPkgs.pkgs-errors).buildDepError "gi-cairo"))
          (hsPkgs."gi-cairo-render" or ((hsPkgs.pkgs-errors).buildDepError "gi-cairo-render"))
          ];
        buildable = true;
        };
      };
    }