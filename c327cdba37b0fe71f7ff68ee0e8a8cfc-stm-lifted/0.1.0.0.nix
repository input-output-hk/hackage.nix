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
        name = "stm-lifted";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Maksymilian Owsianny";
      maintainer = "Maksymilian.Owsianny@gmail.com";
      author = "Maksymilian Owsianny";
      homepage = "";
      url = "";
      synopsis = "Software Transactional Memory lifted to MonadIO";
      description = "A MonadIO version of\n<http://hackage.haskell.org/package/stm-2.4.2 STM> library.";
      buildType = "Simple";
    };
    components = {
      "stm-lifted" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.stm)
        ];
      };
    };
  }