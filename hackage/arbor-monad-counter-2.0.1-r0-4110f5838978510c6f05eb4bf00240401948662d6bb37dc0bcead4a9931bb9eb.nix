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
        name = "arbor-monad-counter";
        version = "2.0.1";
      };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/arbor-monad-counter#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/arbor/arbor-monad-counter#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "arbor-monad-counter-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            (hsPkgs.arbor-monad-counter)
            (hsPkgs.hspec)
            (hsPkgs.hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
          ];
        };
      };
    };
  }