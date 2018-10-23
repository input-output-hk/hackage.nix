{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "data-diverse-lens";
        version = "3.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/data-diverse-lens#readme";
      url = "";
      synopsis = "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which";
      description = "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which\nRefer to [ManySpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/ManySpec.hs) and [WhichSpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/WhichSpec.hs) for example usages.";
      buildType = "Simple";
    };
    components = {
      "data-diverse-lens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-diverse)
          (hsPkgs.tagged)
          (hsPkgs.profunctors)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.data-has)
        ];
      };
      tests = {
        "data-diverse-lens-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-diverse)
            (hsPkgs.data-diverse-lens)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.tagged)
            (hsPkgs.generic-lens)
          ];
        };
      };
    };
  }