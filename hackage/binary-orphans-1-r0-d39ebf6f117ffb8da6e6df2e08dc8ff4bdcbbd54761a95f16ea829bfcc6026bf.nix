{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "binary-orphans"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Compatibility package for @binary@; provides instances.";
      description = "This package provides instances defined in later versions of @binary@ package\n\nPrior version 1 this packages provided instances for other packages.\nThat functionality is moved to [binary-instances](https://hackage.haskell.org/package/binary-instances) package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "7.10")) [
          (hsPkgs.nats)
          (hsPkgs.void)
          ]) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
          ];
        };
      tests = {
        "binary-orphans-test" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-orphans)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tagged)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "7.10")) [
            (hsPkgs.nats)
            (hsPkgs.void)
            ];
          };
        };
      };
    }