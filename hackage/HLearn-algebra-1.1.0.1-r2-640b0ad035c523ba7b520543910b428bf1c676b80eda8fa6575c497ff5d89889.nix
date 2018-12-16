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
        name = "HLearn-algebra";
        version = "1.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "http://github.com/mikeizbicki/HLearn/";
      url = "";
      synopsis = "Algebraic foundation for homomorphic learning";
      description = "This package is deprecated.  The latest version of HLearn is available from the github repo at: <http://github.com/mikeizbicki/hlearn>.  If you want to use HLearn, I strongly recommend you contact me (mike@izbicki.me) first to see if HLearn will really fit your needs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ConstraintKinds)
          (hsPkgs.vector-heterogenous)
          (hsPkgs.template-haskell)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
          (hsPkgs.parallel)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.hashable)
        ];
      };
    };
  }