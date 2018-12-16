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
        name = "text-show";
        version = "0.7.0.1";
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
      "library" = {
        depends = (([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.7") (hsPkgs.tagged)) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs.bytestring-builder)) ++ (if compiler.isGhc && compiler.version.lt "7.9"
          then [
            (hsPkgs.nats)
            (hsPkgs.transformers)
            (hsPkgs.void)
          ]
          else [ (hsPkgs.integer-gmp) ]);
      };
      tests = {
        "text-show-properties" = {
          depends = (([
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.text-show)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.7") (hsPkgs.tagged)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.bytestring-builder)) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.9") [
            (hsPkgs.nats)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.void)
          ];
        };
      };
    };
  }