{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "salak-toml"; version = "0.2.9.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/salak#readme";
      url = "";
      synopsis = "Configuration Loader for toml";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.salak)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tomland)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.salak)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tomland)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }