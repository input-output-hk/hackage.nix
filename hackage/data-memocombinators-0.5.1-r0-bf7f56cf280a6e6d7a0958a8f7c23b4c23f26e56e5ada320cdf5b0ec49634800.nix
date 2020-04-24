{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "data-memocombinators"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "http://github.com/luqui/data-memocombinators";
      url = "";
      synopsis = "Combinators for building memo tables.";
      description = "Combinators for building memo tables.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."data-inttrie" or ((hsPkgs.pkgs-errors).buildDepError "data-inttrie"))
          ];
        buildable = true;
        };
      };
    }