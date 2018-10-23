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
        name = "hreader";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "Aleksey Uimanov";
      homepage = "https://bitbucket.org/s9gf4ult/hreader";
      url = "";
      synopsis = "Generalization of MonadReader and ReaderT";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hreader" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.hset)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }