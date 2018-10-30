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
        name = "intrinsic-superclasses";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Sodality";
      maintainer = "dailectic@gmail.com";
      author = "Dai";
      homepage = "https://github.com/daig/intrinsic-superclasses#readme";
      url = "";
      synopsis = "A quasiquoter implementation of the Intrinsic Superclasses Proposal";
      description = "A template haskell implementation of the\n<https://ghc.haskell.org/trac/ghc/wiki/IntrinsicSuperclasses Intrinsic Superclasses Proposal>,\nwhich allows defining all superclass methods at the \"root\"\nof the class heirarchy in one declaration, rathar than\nan instance declaration per class";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }