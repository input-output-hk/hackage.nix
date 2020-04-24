{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "variables"; version = "0.1.0"; };
      license = "MIT";
      copyright = "© Alistair Lynn, 2014";
      maintainer = "arplynn@gmail.com";
      author = "Alistair Lynn";
      homepage = "https://github.com/prophile/variables";
      url = "";
      synopsis = "Monads with variables, without deep magic";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }