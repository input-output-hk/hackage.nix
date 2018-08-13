{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "intrinsic-superclasses";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "Sodality";
      maintainer = "dailectic@gmail.com";
      author = "Dai";
      homepage = "https://github.com/daig/intrinsic-superclasses#readme";
      url = "";
      synopsis = "A quasiquoter for better instance deriving and default methods";
      description = "A template haskell utility inspired by the\n<https://ghc.haskell.org/trac/ghc/wiki/IntrinsicSuperclasses Intrinsic Superclasses Proposal>,\nwhich allows defining all superclass methods at the \"root\" subclass\nof the heirarchy in one declaration, rather than\nan instance declaration per class.\nAlso permits defining superclass method defaults with the subclass\nfor greater flexibility than the DefaultSignatures extension";
      buildType = "Simple";
    };
    components = {
      "intrinsic-superclasses" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }