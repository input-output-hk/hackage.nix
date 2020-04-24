{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "vitrea"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "mromang08@gmail.com";
      author = "Mario Roman";
      homepage = "https://github.com/mroman42/vitrea";
      url = "";
      synopsis = "Profunctor optics via the profunctor representation theorem.";
      description = "Pure profunctor lenses and optics via the profunctor representation theorem. All the optics on this library are particular cases of a single unified definition. All the combinators on this library are instantiations of the profunctor optic to a particular Tambara module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }