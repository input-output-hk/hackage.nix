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
      specVersion = "1.6";
      identifier = {
        name = "statistics-dirichlet";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2012 Felipe A. Lessa";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Almeida Lessa";
      homepage = "";
      url = "";
      synopsis = "Functions for working with Dirichlet densities and mixtures on vectors.";
      description = "Functions for working with Dirichlet densities and mixtures\non vectors.  The focus of this package is on deriving these\ndistributions from observed data.\n\nThis package should be treated as experimental code, it has\nnot been battle-tested as much as it would be nice to be.\n\nNote that although this package is BSD3-licensed, it uses the\n@nonlinear-optimization@ package which is GPLed.  It should\nbe straightforward to use another library in its stead,\nthough.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
          (hsPkgs.nonlinear-optimization)
          (hsPkgs.hmatrix-special)
        ];
      };
    };
  }