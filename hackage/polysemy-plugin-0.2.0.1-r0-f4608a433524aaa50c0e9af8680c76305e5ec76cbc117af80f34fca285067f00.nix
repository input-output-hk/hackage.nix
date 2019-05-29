{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy-plugin"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/polysemy#readme";
      url = "";
      synopsis = "Disambiguate obvious uses of effects.";
      description = "Please see the README on GitHub at <https://github.com/isovector/polysemy/tree/master/polysemy-plugin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-tcplugins-extra)
          (hsPkgs.polysemy)
          (hsPkgs.syb)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "polysemy-plugin-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-tcplugins-extra)
            (hsPkgs.hspec)
            (hsPkgs.inspection-testing)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.should-not-typecheck)
            (hsPkgs.syb)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }