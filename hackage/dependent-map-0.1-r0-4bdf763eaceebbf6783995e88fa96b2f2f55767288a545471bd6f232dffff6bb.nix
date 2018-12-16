{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "dependent-map";
        version = "0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/dependent-map";
      url = "";
      synopsis = "Dependent finite maps (partial dependent products)";
      description = "Dependent finite maps (partial dependent products)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.dependent-sum)
        ];
      };
    };
  }