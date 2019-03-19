{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "writer-cps-full"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Daniel Mendler";
      maintainer = "mail@daniel-mendler.de";
      author = "Daniel Mendler";
      homepage = "https://github.com/minad/writer-cps-full#readme";
      url = "";
      synopsis = "WriteT and RWST monad transformers (Reexport with all dependencies)";
      description = "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. This package reexports from writer-cps-transformers and provides all missing orphan instances, e.g. from mtl.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.writer-cps-transformers)
          (hsPkgs.writer-cps-mtl)
          (hsPkgs.writer-cps-lens)
          (hsPkgs.writer-cps-morph)
          ];
        };
      };
    }