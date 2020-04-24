{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hgeos"; version = "0.1.5.1"; };
      license = "MIT";
      copyright = "(C) 2016 Richard Cook";
      maintainer = "Richard Cook <rcook@rcook.org>";
      author = "Richard Cook <rcook@rcook.org>";
      homepage = "https://github.com/rcook/hgeos#readme";
      url = "";
      synopsis = "Simple Haskell bindings to GEOS C API";
      description = "Simple Haskell bindings to the <https://trac.osgeo.org/geos/ GEOS>\n<http://geos.osgeo.org/doxygen/geos__c_8h_source.html C API> heavily inspired\nby <https://github.com/django/django/tree/master/django/contrib/gis/geos Django GEOS bindings>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = [
          (pkgs."geos_c" or ((hsPkgs.pkgs-errors).sysDepError "geos_c"))
          ];
        buildable = true;
        };
      tests = {
        "hgeos-app" = {
          depends = [
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hgeos" or ((hsPkgs.pkgs-errors).buildDepError "hgeos"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }