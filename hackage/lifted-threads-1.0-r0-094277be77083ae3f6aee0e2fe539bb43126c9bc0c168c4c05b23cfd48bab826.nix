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
        name = "lifted-threads";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrzej Rybczak <andrzej@scrive.com>";
      author = "Scrive";
      homepage = "https://github.com/scrive/lifted-threads";
      url = "";
      synopsis = "lifted IO operations from the threads library";
      description = "@lifted-threads@ exports IO operations from the base library lifted to\nany instance of 'MonadBase' or 'MonadBaseControl'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.threads)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
        ];
      };
    };
  }