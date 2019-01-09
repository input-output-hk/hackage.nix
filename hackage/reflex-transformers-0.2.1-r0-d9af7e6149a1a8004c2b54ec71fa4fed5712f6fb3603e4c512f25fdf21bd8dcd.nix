{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-transformers"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Oliver Batchelor";
      maintainer = "saulzar@gmail.com";
      author = "Oliver Batchelor";
      homepage = "http://github.com/saulzar/reflex-transformers";
      url = "";
      synopsis = "Collections and switchable Monad transformers for Reflex";
      description = "This library provides a set of Monad transformers (and instances for common transformers) on top of\nwidget switching primitives for reflex. For example ReaderT and WriterT which operate in the presence\nof widget switching, allowing you to pass inputs and outputs up and down the UI tree.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.reflex)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          (hsPkgs.stateWriter)
          ];
        };
      };
    }