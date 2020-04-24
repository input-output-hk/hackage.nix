{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fay-geoposition"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eocallaghan@alterapraxis.com";
      author = "Edward O'Callaghan";
      homepage = "https://github.com/victoredwardocallaghan/fay-geoposition";
      url = "";
      synopsis = "W3C compliant implementation of GeoPosition API.";
      description = "W3C compliant implementation of GeoPosition API within the Fay Monad";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."fay" or ((hsPkgs.pkgs-errors).buildDepError "fay"))
          (hsPkgs."fay-text" or ((hsPkgs.pkgs-errors).buildDepError "fay-text"))
          ];
        buildable = true;
        };
      };
    }