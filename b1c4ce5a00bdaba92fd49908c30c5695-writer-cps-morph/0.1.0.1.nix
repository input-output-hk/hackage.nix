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
        name = "writer-cps-morph";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/writer-cps-morph#readme";
      url = "";
      synopsis = "MFunctor instance for CPS style WriterT and RWST";
      description = "MFunctor instance for CPS style WriterT and RWST";
      buildType = "Simple";
    };
    components = {
      "writer-cps-morph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mmorph)
          (hsPkgs.writer-cps-transformers)
        ];
      };
    };
  }