{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hmatrix-nipals";
        version = "0.2";
      };
      license = "LGPL-2.1-only";
      copyright = "Copyright (c) 2011 Alan Falloon";
      maintainer = "alan.falloon@gmail.com";
      author = "Alan Falloon";
      homepage = "http://github.com/alanfalloon/hmatrix-nipals";
      url = "";
      synopsis = "NIPALS method for Principal Components Analysis on large data-sets.";
      description = "NIPALS -- Nonlinear Iterative Partial Least Squares\n<http://en.wikipedia.org/wiki/NIPALS>, is a method for iteratively\nfinding the left singular vectors of a large matrix. In other words\nit discovers the largest principal component\n<http://en.wikipedia.org/wiki/Principal_component> of a set of\nmean-centred samples, along with the score (the magnitude of the\nprincipal component) for each sample, and the residual of each\nsample that is orthogonal to the principal component. By repeating\nthe procedure on the residuals, the second principal component is\nfound, and so on.\n\nThe advantage of NIPALS over more traditional methods, like SVD, is\nthat it is memory efficient, and can complete early if only a small\nnumber of principal components are needed. It is also simple to\nimplement correctly. Additionally, because it doesn't pre-condition\nthe sample matrix in any way, it can be implemented with only two\nsequential passes per iteration through the sample data, which is\nmuch more efficient than random accesses if the data-set is too\nlarge to fit in memory.\n\nNIPALS is not generally recommended because sample matrices where\nthe largest eigenvalues are close in magnitude will cause NIPALS to\nconverge very slowly. For sparse matrices, use Lanczos methods\n<http://en.wikipedia.org/wiki/Lanczos_algorithm>, and for dense\nmatrices, random-projection methods\n<http://amath.colorado.edu/faculty/martinss/Pubs/2009_HMT_random_review.pdf>\ncan be used. However, these methods are harder to implement in a\nsingle pass. If you know of a good, single-pass, and\nmemory-efficient implementation of either of these methods, please\ncontact the author.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
        ];
      };
      exes = {
        "test" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hmatrix)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }