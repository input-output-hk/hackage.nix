{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build-example = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "multistate";
        version = "0.8.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Jan Bracker, 2013-2018 Lennart Spitzner";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
      author = "Jan Bracker, Lennart Spitzner";
      homepage = "https://github.com/lspitzner/multistate";
      url = "";
      synopsis = "like mtl's ReaderT / WriterT / StateT, but more than one\ncontained value/type.";
      description = "When using multiple Read\\/Write\\/State transformers in the same monad stack,\nit becomes necessary to lift the operations in order to affect a specific\ntransformer.\nUsing heterogeneous lists (and all kinds of GHC extensions magic),\nthis package provides transformers that remove that necessity:\nMultiReaderT\\/MultiWriterT\\/MultiStateT\\/MultiRWST can contain a\nheterogeneous list of values.\n\nSee the <https://github.com/lspitzner/multistate README> for\na longer description.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.tagged)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
        ];
      };
      exes = {
        "multistate-example" = {
          depends = pkgs.lib.optionals (flags.build-example) [
            (hsPkgs.multistate)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "multistate-test" = {
          depends = [
            (hsPkgs.multistate)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }