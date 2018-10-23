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
        name = "path-extra";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Chris Done's path library, enriched with URL-related goodies.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "path-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.path)
        ];
      };
    };
  }