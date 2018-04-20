{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-show";
          version = "0.8";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2014-2015 Ryan Scott";
        maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
        author = "Ryan Scott";
        homepage = "https://github.com/RyanGlScott/text-show";
        url = "";
        synopsis = "Efficient conversion of values into Text";
        description = "@text-show@ offers a replacement for the @Show@ typeclass intended\nfor use with @Text@ instead of @String@s. This package was created\nin the spirit of\n@<http://hackage.haskell.org/package/bytestring-show bytestring-show>@.\n\nAt the moment, @text-show@ provides @Show@ instances for most data\ntypes in the @<http://hackage.haskell.org/package/array array>@,\n@<http://hackage.haskell.org/package/base base>@,\n@<http://hackage.haskell.org/package/bytestring bytestring>@, and\n@<http://hackage.haskell.org/package/text text>@ packages.\nTherefore, much of the source code for @text-show@ consists of\nborrowed code from those packages in order to ensure that the\nbehaviors of the two @Show@ typeclasses coincide.\n\nFor most uses, simply importing \"Text.Show.Text\"\nwill suffice:\n\n@\nmodule Main where\n\nimport Data.Text (Text)\nimport Prelude hiding (Show(..), print)\nimport Text.Show.Text\n\nhello :: Text\nhello = show (Just \\\"Hello, World!\\\")\n\nmain :: IO ()\nmain = print hello\n@\n\nIf you desire it, there are also monomorphic versions of the @showb@\nfunction available in the submodules of \"Text.Show.Text\". A naming\nconvention is present in which functions that show different values\ndepending on the precedence end with @Prec@ (e.g., @showbIntPrec@),\nwhereas functions that show the same values regardless of\nprecedence do not end with @Prec@ (e.g., @showbBool@).\n\nSupport for automatically deriving @Show@ instances can be found\nin the \"Text.Show.Text.TH\" and \"Text.Show.Text.Generic\" modules.\nIf you don't know which one to use, use @Text.Show.Text.TH@.";
        buildType = "Simple";
      };
      components = {
        text-show = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.bytestring-builder
            hsPkgs.ghc-prim
            hsPkgs.integer-gmp
            hsPkgs.nats
            hsPkgs.semigroups
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.void
          ];
        };
        tests = {
          text-show-spec = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.base-orphans
              hsPkgs.bytestring
              hsPkgs.bytestring-builder
              hsPkgs.ghc-prim
              hsPkgs.hspec
              hsPkgs.nats
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.text-show
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.void
            ];
          };
        };
      };
    }