{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "modular-prelude-classy"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/modular-prelude#readme";
      url = "";
      synopsis = "Reifying ClassyPrelude a la ModularPrelude";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."classy-prelude" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude"))
          (hsPkgs."modular-prelude" or ((hsPkgs.pkgs-errors).buildDepError "modular-prelude"))
          ];
        buildable = true;
        };
      };
    }