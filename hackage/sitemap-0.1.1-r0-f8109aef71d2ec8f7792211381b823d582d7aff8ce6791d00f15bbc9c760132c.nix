{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sitemap"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "http://github.com/alpmestan/sitemap";
      url = "";
      synopsis = "Sitemap parser";
      description = "Sitemap parser. See the \"Web.Sitemap\" module for an example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."taggy" or ((hsPkgs.pkgs-errors).buildDepError "taggy"))
          (hsPkgs."taggy-lens" or ((hsPkgs.pkgs-errors).buildDepError "taggy-lens"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }