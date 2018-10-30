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
      specVersion = "1.14";
      identifier = {
        name = "conjugateGradient";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2013";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://github.com/LeventErkok/ConjugateGradient";
      url = "";
      synopsis = "Sparse matrix linear-equation solver";
      description = "Sparse matrix linear-equation solver, using the conjugate gradient algorithm. Note that the\ntechnique only applies to matrices that are:\n\n* Symmetric\n\n* Positive-definite\n\nSee <http://en.wikipedia.org/wiki/Conjugate_gradient_method> for details.\n\nThe conjugate gradient method can handle very large sparse matrices, where direct\nmethods (such as LU decomposition) are way too expensive to be useful in practice.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.containers)
        ];
      };
    };
  }