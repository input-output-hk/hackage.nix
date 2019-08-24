{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dependent-sum-aeson-orphans";
        version = "0.2.1.0";
        };
      license = "BSD-3-Clause";
      copyright = "2018 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems";
      homepage = "";
      url = "";
      synopsis = "JSON instances for DSum, DMap, and Some";
      description = "JSON instances for DSum, DMap, and Some.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.constraints)
          (hsPkgs.constraints-extras)
          (hsPkgs.dependent-map)
          (hsPkgs.dependent-sum)
          ];
        };
      };
    }