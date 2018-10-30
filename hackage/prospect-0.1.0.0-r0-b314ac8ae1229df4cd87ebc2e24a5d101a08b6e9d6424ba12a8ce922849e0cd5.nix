{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "prospect";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/prospect#readme";
      url = "";
      synopsis = "Explore continuations with trepidation";
      description = "Please see the README on GitHub at <https://github.com/isovector/prospect#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.free)
          (hsPkgs.kan-extensions)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "prospect-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.free)
            (hsPkgs.hspec)
            (hsPkgs.inspection-testing)
            (hsPkgs.kan-extensions)
            (hsPkgs.prospect)
          ];
        };
      };
    };
  }