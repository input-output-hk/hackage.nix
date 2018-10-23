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
        name = "type-combinators";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kylcarte@gmail.com";
      author = "Kyle Carter";
      homepage = "https://github.com/kylcarte/type-combinators";
      url = "";
      synopsis = "A collection of data types for type-level programming";
      description = "";
      buildType = "Simple";
    };
    components = {
      "type-combinators" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ];
      };
    };
  }