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
        name = "batch";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/batch#readme";
      url = "";
      synopsis = "Simplify queuing up data and processing it in batch.";
      description = "Simplify queuing up data and processing it in batch.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.timespan)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "batch-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.batch)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.timespan)
          ];
        };
      };
    };
  }