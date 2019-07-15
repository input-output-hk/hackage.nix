{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "monad-metrics-extensible"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Georg Rudoy";
      maintainer = "0xd34df00d@gmail.com";
      author = "Georg Rudoy";
      homepage = "https://github.com/0xd34df00d/monad-metrics-extensible#readme";
      url = "";
      synopsis = "An extensible and type-safe wrapper around EKG metrics";
      description = "Please see the README on GitHub at <https://github.com/0xd34df00d/monad-metrics-extensible#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.dependent-map)
          (hsPkgs.dependent-sum)
          (hsPkgs.ekg)
          (hsPkgs.ekg-core)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.text)
          ];
        };
      tests = {
        "monad-metrics-extensible-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dependent-map)
            (hsPkgs.dependent-sum)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.monad-metrics-extensible)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.text)
            ];
          };
        };
      };
    }