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
      specVersion = "1.8";
      identifier = {
        name = "typeparams";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "http://github.com/mikeizbicki/params/";
      url = "";
      synopsis = "Lens-like interface for type level parameters; allows unboxed unboxed vectors and supercompilation";
      description = "This library provides a lens-like interface for working with type parameters. In the code:\n\n> data Example p1 (p2::Config Nat) (p3::Constraint) = Example\n\n@p1@, @p2@, and @p3@ are the type parameters.\n\nTwo example uses of this library are for unboxing unboxed vectors and supercompilation-like optimizations.   Please see the <https://github.com/mikeizbicki/typeparams#the-typeparams-library README file on github> for a detailed description and tutorial.  After reading through that, the haddock documentation will make more sense.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.deepseq)
          (hsPkgs.tagged)
          (hsPkgs.reflection)
          (hsPkgs.constraints)
          (hsPkgs.primitive)
          (hsPkgs.ghc-prim)
          (hsPkgs.vector)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }