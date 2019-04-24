{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "salak-yaml"; version = "0.2.9.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Daniel YU";
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
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.hspec)
            (hsPkgs.libyaml)
            (hsPkgs.mtl)
            (hsPkgs.salak)
            (hsPkgs.text)
            ];
          };
        };
      };
    }