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
        name = "yi-emacs-colours";
        version = "0.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "© Mateusz Kowalczyk, 2014";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/yi-emacs-colours";
      url = "";
      synopsis = "Simple mapping from colour names used in emacs to Color";
      description = "Simple mapping from colour names used in emacs to Color";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.yi-language)
        ];
      };
    };
  }