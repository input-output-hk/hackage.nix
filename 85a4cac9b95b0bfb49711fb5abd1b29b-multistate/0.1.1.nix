{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-test = false;
      build-example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "multistate";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Jan Bracker, Lennart Spitzner";
        maintainer = "Lennart Spitzner <lsp@informatik.uni-kiel.de>";
        author = "Jan Bracker, Lennart Spitzner";
        homepage = "https://github.com/lspitzner/multistate";
        url = "";
        synopsis = "like mtl's ReaderT/StateT, but more than one contained value/type.";
        description = "When using multiple ReaderT's or StateT's in the same monad stack, it becomes\nnecessary to lift the operations in order to affect a specific transformer.\nUsing heterogenous lists (type level functions), a GADT and a corresponding\ntype class, this package provides transformers that remove that necessity:\nMultiReaderT/MultiStateT can contain a heterogenous list of values.\nThe type inferred for the getter/setter determines which value is\nread/written.\nSee the Example application for some very basic usage.\nThis package currently lacks a complete set of \"lifting instances\", i.e.\ninstance definitions for classes such as mtl's MonadReader \"over\" the newly\nintroduced monad transformers. These \"lifting instances\" would be necessary\nto achieve full compatability with existing transformers. Ping me if you\nfind anything specific missing.";
        buildType = "Simple";
      };
      components = {
        "multistate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.tfp
            hsPkgs.transformers
          ];
        };
        exes = {
          "multistate-test" = {
            depends  = pkgs.lib.optionals _flags.build-test [
              hsPkgs.multistate
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.tfp
            ];
          };
          "multistate-example" = {
            depends  = pkgs.lib.optionals _flags.build-example [
              hsPkgs.multistate
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.tfp
              hsPkgs.mtl
            ];
          };
        };
      };
    }