{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "satchmo-toysat"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai";
      homepage = "https://github.com/msakai/satchmo-toysat";
      url = "";
      synopsis = "toysat driver as backend for satchmo";
      description = "toysat driver as backend for satchmo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."satchmo" or ((hsPkgs.pkgs-errors).buildDepError "satchmo"))
          (hsPkgs."toysolver" or ((hsPkgs.pkgs-errors).buildDepError "toysolver"))
          ];
        buildable = true;
        };
      };
    }