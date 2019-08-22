{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "salak-yaml"; version = "0.3.5.1"; };
      license = "MIT";
      copyright = "2019 Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/salak#readme";
      url = "";
      synopsis = "Configuration Loader for yaml";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.libyaml)
          (hsPkgs.salak)
          (hsPkgs.text)
          ];
        };
      tests = {
        "salak-yaml-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.libyaml)
            (hsPkgs.mtl)
            (hsPkgs.salak)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "salak-yaml-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.criterion)
            (hsPkgs.libyaml)
            (hsPkgs.salak)
            (hsPkgs.text)
            ];
          };
        };
      };
    }