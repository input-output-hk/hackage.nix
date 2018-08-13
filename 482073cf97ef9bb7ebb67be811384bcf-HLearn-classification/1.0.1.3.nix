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
      specVersion = "1.8";
      identifier = {
        name = "HLearn-classification";
        version = "1.0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "http://github.com/mikeizbicki/HLearn/";
      url = "";
      synopsis = "";
      description = "This package is deprecated.  The latest version of HLearn is available from the github repo at: <http://github.com/mikeizbicki/hlearn>.  If you want to use HLearn, I strongly recommend you contact me (mike@izbicki.me) first to see if HLearn will really fit your needs.";
      buildType = "Simple";
    };
    components = {
      "HLearn-classification" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HLearn-algebra)
          (hsPkgs.HLearn-distributions)
          (hsPkgs.ConstraintKinds)
          (hsPkgs.dlist)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.primitive)
          (hsPkgs.list-extras)
          (hsPkgs.containers)
          (hsPkgs.statistics)
          (hsPkgs.QuickCheck)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.MonadRandom)
          (hsPkgs.logfloat)
          (hsPkgs.math-functions)
          (hsPkgs.normaldistribution)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.binary)
        ];
      };
    };
  }