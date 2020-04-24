{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hgeos"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(C) 2016 Richard Cook";
      maintainer = "Richard Cook <rcook@rcook.org>";
      author = "Richard Cook <rcook@rcook.org>";
      homepage = "https://github.com/rcook/hgeos#readme";
      url = "";
      synopsis = "Simple Haskell bindings to GEOS C API";
      description = "Simple Haskell bindings to the GEOS C API heavily inspired by\n<https://github.com/django/django/tree/master/django/contrib/gis/geos Django GEOS bindings>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."geos_c" or ((hsPkgs.pkgs-errors).sysDepError "geos_c"))
          ];
        buildable = true;
        };
      tests = {
        "hgeos-app" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hgeos" or ((hsPkgs.pkgs-errors).buildDepError "hgeos"))
            ];
          buildable = true;
          };
        };
      };
    }