{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HLearn-algebra"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "http://github.com/mikeizbicki/HLearn/";
      url = "";
      synopsis = "Algebraic foundation for homomorphic learning";
      description = "This package is deprecated.  The latest version of HLearn is available from the github repo at: http://github.com/mikeizbicki/hlearn.  If you want to use HLearn, I strongly recommend you contact me (mike@izbicki.me) first to see if HLearn will really fit your needs.\nThis module contains the algebraic basis for the HLearn library.  It is separated out in it's own library because it contains routines that may be useful to others.  In particular, it contains methods for automatically converting algorithms into online/parallel versions, and its structure is slightly more modular (although much less complete) than other algebra packages.";
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