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
        name = "demarcate";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nickolay Kudasov<nickolay.kudasov@gmail.com>";
      author = "Nickolay Kudasov<nickolay.kudasov@gmail.com>";
      homepage = "https://github.com/fizruk/demarcate";
      url = "";
      synopsis = "Demarcating transformed monad.";
      description = "This library provides 'Demarcate' type constructor which makes\npossible transformations of @t m a@ monadic values.";
      buildType = "Simple";
    };
    components = {
      "demarcate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.free)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }