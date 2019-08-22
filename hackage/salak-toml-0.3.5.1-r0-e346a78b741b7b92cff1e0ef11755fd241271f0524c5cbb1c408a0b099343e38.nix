{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "salak-toml"; version = "0.3.5.1"; };
      license = "MIT";
      copyright = "2019 Daniel YU";
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
          (hsPkgs.salak)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tomland)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "salak-toml-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.exceptions)
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
      benchmarks = {
        "salak-toml-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
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