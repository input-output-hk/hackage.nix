{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yi-snippet";
        version = "0.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/yi-editor/yi-snippet";
      url = "";
      synopsis = "Snippet support for Yi";
      description = "Snippet support for Yi";
      buildType = "Simple";
    };
    components = {
      "yi-snippet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.yi)
          (hsPkgs.yi-rope)
        ];
      };
    };
  }