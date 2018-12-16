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
        name = "resource-pool-monad";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/haskell-resource-pool-monad";
      url = "";
      synopsis = "A monadic interface for resource-pool";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.free)
          (hsPkgs.kan-extensions)
          (hsPkgs.monad-control)
          (hsPkgs.resource-pool)
          (hsPkgs.transformers)
        ];
      };
    };
  }