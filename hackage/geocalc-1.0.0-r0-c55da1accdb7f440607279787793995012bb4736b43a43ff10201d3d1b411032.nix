{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "geocalc"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gero-dev@physra.net";
      author = "Gero Kriependorf";
      homepage = "";
      url = "";
      synopsis = "Libary for calculating distances between two coordinates in WSG84";
      description = "Algorithm used embraces the earth as a perfect sphere";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.base) ]; };
      };
    }