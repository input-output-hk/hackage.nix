{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monad-control";
          version = "1.0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Bas van Dijk, Anders Kaseorg";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk, Anders Kaseorg";
        homepage = "https://github.com/basvandijk/monad-control";
        url = "";
        synopsis = "Lift control operations, like exception catching, through monad transformers";
        description = "This package defines the type class @MonadBaseControl@, a subset of\n@MonadBase@ into which generic control operations such as @catch@ can be\nlifted from @IO@ or any other base monad. Instances are based on monad\ntransformers in @MonadTransControl@, which includes all standard monad\ntransformers in the @transformers@ library except @ContT@.\n\nSee the @lifted-base@ package which uses @monad-control@ to lift @IO@\noperations from the @base@ library (like @catch@ or @bracket@) into any monad\nthat is an instance of @MonadBase@ or @MonadBaseControl@.\n\nNote that this package is a rewrite of Anders Kaseorg's @monad-peel@\nlibrary. The main difference is that this package provides CPS style operators\nand exploits the @RankNTypes@ and @TypeFamilies@ language extensions to\nsimplify and speedup most definitions.";
        buildType = "Simple";
      };
      components = {
        "monad-control" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.transformers-base
          ];
        };
      };
    }