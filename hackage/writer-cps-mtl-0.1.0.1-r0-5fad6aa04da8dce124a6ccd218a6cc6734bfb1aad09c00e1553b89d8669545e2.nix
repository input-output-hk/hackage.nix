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
        name = "writer-cps-mtl";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2016 Daniel Mendler";
      maintainer = "mail@daniel-mendler.de";
      author = "Andy Gill, Edward Kmett, Daniel Mendler";
      homepage = "https://github.com/minad/writer-cps-mtl#readme";
      url = "";
      synopsis = "MonadWriter orphan instances for writer-cps-transformers";
      description = "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict/Lazy.";
      buildType = "Simple";
    };
    components = {
      "writer-cps-mtl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.writer-cps-transformers)
        ];
      };
    };
  }