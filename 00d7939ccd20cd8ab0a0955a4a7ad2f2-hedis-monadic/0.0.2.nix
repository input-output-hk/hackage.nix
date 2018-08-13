{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hedis-monadic";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "Aleksey Uimanov";
      homepage = "https://bitbucket.org/s9gf4ult/redis-monadic";
      url = "";
      synopsis = "A la MonadReader for Redis connection";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hedis-monadic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hedis)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
        ];
      };
    };
  }