{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy-zoo"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/polysemy-zoo#readme";
      url = "";
      synopsis = "Experimental, user-contributed effects and interpreters for polysemy";
      description = "Please see the README on GitHub at <https://github.com/isovector/polysemy-zoo#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.polysemy)
          (hsPkgs.polysemy-plugin)
          ];
        };
      tests = {
        "polysemy-zoo-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.polysemy-zoo)
            ];
          };
        };
      };
    }