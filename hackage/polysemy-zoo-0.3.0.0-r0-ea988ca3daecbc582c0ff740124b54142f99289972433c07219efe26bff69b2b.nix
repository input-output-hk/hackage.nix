{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy-zoo"; version = "0.3.0.0"; };
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
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.polysemy)
          (hsPkgs.polysemy-plugin)
          (hsPkgs.random)
          (hsPkgs.reflection)
          ];
        };
      tests = {
        "polysemy-zoo-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.constraints)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.polysemy-zoo)
            (hsPkgs.random)
            (hsPkgs.reflection)
            (hsPkgs.text)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }