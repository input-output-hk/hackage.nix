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
        name = "dependent-monoidal-map";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "Data.Dependent.Map variant that appends conflicting entries when merging maps instead of discarding one side of the conflict.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dependent-monoidal-map" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.constraints)
          (hsPkgs.constraints-extras)
          (hsPkgs.dependent-sum)
          (hsPkgs.dependent-sum-aeson-orphans)
          (hsPkgs.dependent-map)
        ];
      };
    };
  }