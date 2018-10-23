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
        name = "text-show";
        version = "2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2014-2015 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/text-show";
      url = "";
      synopsis = "Efficient conversion of values into Text";
      description = "@text-show@ offers a replacement for the @Show@ typeclass intended\nfor use with @Text@ instead of @String@s. This package was created\nin the spirit of\n@<http://hackage.haskell.org/package/bytestring-show bytestring-show>@.\n\nAt the moment, @text-show@ provides instances for most data\ntypes in the @<http://hackage.haskell.org/package/array array>@,\n@<http://hackage.haskell.org/package/base base>@,\n@<http://hackage.haskell.org/package/bytestring bytestring>@, and\n@<http://hackage.haskell.org/package/text text>@ packages.\nTherefore, much of the source code for @text-show@ consists of\nborrowed code from those packages in order to ensure that the\nbehaviors of @Show@ and @TextShow@ coincide.\n\nFor most uses, simply importing \"TextShow\"\nwill suffice:\n\n@\nmodule Main where\n\nimport TextShow\n\nmain :: IO ()\nmain = printT (Just \\\"Hello, World!\\\")\n@\n\nIf you desire it, there are also monomorphic versions of the @showb@\nfunction available in the submodules of \"TextShow\". See the\n<https://github.com/RyanGlScott/text-show/wiki/Naming-conventions naming conventions>\npage for more information.\n\nSupport for automatically deriving @TextShow@ instances can be found\nin the \"TextShow.TH\" and \"TextShow.Generic\" modules. If you don't\nknow which one to use, use \"TextShow.TH\".";
      buildType = "Simple";
    };
    components = {
      "text-show" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.containers)
          (hsPkgs.generic-deriving)
          (hsPkgs.ghc-prim)
          (hsPkgs.integer-gmp)
          (hsPkgs.nats)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.void)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.base-orphans)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.generic-deriving)
            (hsPkgs.ghc-prim)
            (hsPkgs.hspec)
            (hsPkgs.nats)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.void)
          ];
        };
      };
    };
  }