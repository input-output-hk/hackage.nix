{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yarr-image-io"; version = "1.3.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dominic Steinitz <dominic@steinitz.org>";
      author = "Don Stewart, Raphael Javaux, Roman Leventov";
      homepage = "";
      url = "";
      synopsis = "Image IO for Yarr library";
      description = "@repa-devil@ package, adapted to @yarr@ library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yarr" or ((hsPkgs.pkgs-errors).buildDepError "yarr"))
          ];
        libs = [ (pkgs."IL" or ((hsPkgs.pkgs-errors).sysDepError "IL")) ];
        buildable = true;
        };
      };
    }