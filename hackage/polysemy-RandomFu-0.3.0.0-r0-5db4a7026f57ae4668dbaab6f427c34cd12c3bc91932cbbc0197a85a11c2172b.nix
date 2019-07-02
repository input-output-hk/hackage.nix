{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "polysemy-RandomFu"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "https://github.com/adamConnerSax/polysemy-Extra#readme";
      url = "";
      synopsis = "Experimental, RandomFu effect and interpreters for polysemy";
      description = "Please see the README on GitHub at <https://github.com/adamConnerSax/polysemy-Extra/tree/master/polysemy-RandomFu#polysemy-randomfu>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.polysemy)
          (hsPkgs.polysemy-plugin)
          (hsPkgs.polysemy-zoo)
          (hsPkgs.random-fu)
          (hsPkgs.random-source)
          ];
        };
      tests = {
        "polysemy-RandomFu-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-RandomFu)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.polysemy-zoo)
            (hsPkgs.random-fu)
            (hsPkgs.random-source)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }