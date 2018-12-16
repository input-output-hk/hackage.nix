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
      specVersion = "1.10";
      identifier = {
        name = "Naperian";
        version = "0.1.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "dominic@steinitz.org";
      author = "Austin Seipp";
      homepage = "https://github.com/idontgetoutmuch/Naperian";
      url = "";
      synopsis = "Naperian Functors for APL-like programming";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.vector)
        ];
      };
    };
  }