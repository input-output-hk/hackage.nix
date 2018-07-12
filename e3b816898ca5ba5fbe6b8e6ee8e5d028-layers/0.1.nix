{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "layers";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shane@duairc.com";
        author = "Shane O'Brien";
        homepage = "http://github.com/duairc/layers";
        url = "";
        synopsis = "Modular type class machinery for monad transformer stacks.";
        description = "The @layers@ package provides the type class machinery needed to make monads\nbuilt out of stacks of monad transformers easy to use. It introduces the\nconcept of monad layers, which are a generalisation of monad transformers.\nThe type class machinery provided by and the design patterns suggested by\n@layers@ allow for much more modularity than is possible with the existing\ntype class machinery and design patterns. With @layers@ it is possible to\nuse arbitrary monad interfaces (monad interfaces are what we call the sort\nof type classes that you see in the @mtl@ and similar packages) with\narbtirary monad transformers (by monad transformers here, we are\nspecifically to monad constructors, such as the ones defined in\n@transformers@), without ever having to explicitly define how to lift\nspecific interfaces through specific transformers.\n\n@layers@ improves upon and/or replaces, in part or in whole, the following\nlist of packages: @transformers@, @mtl@, @mmtl@, @transformers-base@,\n@monad-control@, @lifted-base@, @monad-peel@, @MonadCatchIO-transformers@,\n@MonadCatchIO-mtl@, @exception-transformers@, @monad-abort-fd@ and probably\nmore too. There have been many attempts to either improve upoin or work\naround the deficiencies of the existing type class machinery for monad\ntransformer stacks, but we believe @layers@ is the most complete of any of\nthese so far.\n\nA comprehensive overview of the motivation behind @layers@ and an\nexplanation of the design decisions taken is given in\n\"Documentation.Layers.Overview\". It is /highly recommended/ that you read\nthis if you are considering using this package. The core type classes of the\npackage are defined in \"Control.Monad.Layer\" (this can be thought of as\nequivalent to or a replacement of \"Control.Monad.Trans.Class\" from\n@transformers@). The rest of the modules in this package export monad\ninterfaces, in the \"Control.Monad.Interface\" hierarchy, including\nreplacements for all of the monad interfaces of the @mtl@ package.";
        buildType = "Simple";
      };
      components = {
        "layers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }