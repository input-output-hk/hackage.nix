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
        name = "HLearn-distributions";
        version = "1.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "http://github.com/mikeizbicki/HLearn/";
      url = "";
      synopsis = "Distributions for use with the HLearn library";
      description = "This package is deprecated.  The latest version of HLearn is available from the github repo at: <http://github.com/mikeizbicki/hlearn>.  If you want to use HLearn, I strongly recommend you contact me (mike@izbicki.me) first to see if HLearn will really fit your needs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.HLearn-algebra)
          (hsPkgs.HLearn-datastructures)
          (hsPkgs.ConstraintKinds)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.deepseq)
          (hsPkgs.list-extras)
          (hsPkgs.containers)
          (hsPkgs.statistics)
          (hsPkgs.QuickCheck)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.graphviz)
          (hsPkgs.hmatrix)
          (hsPkgs.gamma)
          (hsPkgs.erf)
          (hsPkgs.array)
          (hsPkgs.process)
          (hsPkgs.MonadRandom)
          (hsPkgs.math-functions)
          (hsPkgs.normaldistribution)
        ];
      };
    };
  }