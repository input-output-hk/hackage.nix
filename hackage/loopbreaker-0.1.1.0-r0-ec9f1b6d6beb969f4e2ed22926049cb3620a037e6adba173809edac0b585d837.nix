{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "loopbreaker"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matej Nižník,\n2019 Sandy Maguire";
      maintainer = "matten@tuta.io";
      author = "Matej Nižník,\nSandy Maguire";
      homepage = "https://github.com/polysemy-research/loopbreaker#readme";
      url = "";
      synopsis = "inline self-recursive definitions";
      description = "Please see the README file on Github for more info";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc)
          (hsPkgs.syb)
          ];
        };
      tests = {
        "loopbreaker-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ghc)
            (hsPkgs.hspec)
            (hsPkgs.inspection-testing)
            (hsPkgs.loopbreaker)
            (hsPkgs.syb)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }