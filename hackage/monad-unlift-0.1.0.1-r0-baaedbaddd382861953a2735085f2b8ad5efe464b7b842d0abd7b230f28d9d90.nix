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
        name = "monad-unlift";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "FP Complete";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/monad-unlift";
      url = "";
      synopsis = "Typeclasses for representing monad transformer unlifting";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "monad-unlift" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.transformers-base)
          (hsPkgs.mutable-containers)
          (hsPkgs.exceptions)
          (hsPkgs.stm)
          (hsPkgs.constraints)
        ];
      };
    };
  }