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
        name = "crjdt-haskell";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Amar Potghan";
      maintainer = "amarpotghan@gmail.com";
      author = "Amar Potghan";
      homepage = "https://github.com/amarpotghan/crjdt-haskell#readme";
      url = "";
      synopsis = "A Conflict-Free Replicated JSON Datatype for Haskell";
      description = "A Conflict-Free Replicated JSON Datatype for Haskell";
      buildType = "Simple";
    };
    components = {
      "crjdt-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.free)
        ];
      };
      tests = {
        "crjdt-haskell-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.crjdt-haskell)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.hedgehog)
          ];
        };
      };
    };
  }