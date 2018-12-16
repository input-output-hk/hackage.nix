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
        name = "profunctor-monad";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/profunctor-monad";
      url = "";
      synopsis = "Monadic bidirectional programming";
      description = "Applicative and monadic interface for bidirectional programming.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.profunctors)
        ];
      };
      tests = {
        "hashcons" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.profunctor-monad)
          ];
        };
      };
    };
  }