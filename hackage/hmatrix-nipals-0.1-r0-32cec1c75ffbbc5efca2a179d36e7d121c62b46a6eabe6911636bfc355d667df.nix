let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "hmatrix-nipals"; version = "0.1"; };
      license = "LGPL-2.1-only";
      copyright = "Copyright (c) 2011 Alan Falloon";
      maintainer = "alan.falloon@gmail.com";
      author = "Alan Falloon";
      homepage = "http://github.com/alanfalloon/hmatrix-nipals";
      url = "";
      synopsis = "NIPALS method for Principal Components Analysis on large data-sets.";
      description = "NIPALS -- Nonlinear Iterative Partial Least Squares\n<http://en.wikipedia.org/wiki/NIPALS>, is a method for iteratively\nfinding the left singular vectors of a large matrix. In other words\nit discovers the largest principal component\n<http://en.wikipedia.org/wiki/Principal_component> of a set of\nmean-centred samples, along with the score (the magnitude of the\nprincipal component) for each sample, and the residual of each\nsample that is orthogonal to the principal component. By repeating\nthe procedure on the residuals, the second principal component is\nfound, and so on.\n\nThe advantage of NIPALS over more traditional methods, like SVD, is\nthat it is memory efficient, and can complete early if only a small\nnumber of principal components are needed. It is also simple to\nimplement correctly. Additionally, because it doesn't pre-condition\nthe sample matrix in any way, it can be implemented with only two\nsequential passes per iteration through the sample data, which is\nmuch more efficient than random accesses if the data-set is too\nlarge to fit in memory.\n\nNIPALS is not generally recommended because sample matrices where\nthe largest eigenvalues are close in magnitude will cause NIPALS to\nconverge very slowly. In general, Lanczos methods\n<http://en.wikipedia.org/wiki/Lanczos_algorithm> or some other\ntruncated singular value decomposition algorithm are preferred to\nNIPALS because of this convergence issue, but these methods often\nrequire the sample matrix to fit in memory, or store large\nconditioning matrices, which isn't always feasible. However, if you\nknow of free and memory-efficient implementations of these more\nsophisticated algorithms, please contact the author with a pointer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          ];
        };
      exes = {
        "test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          };
        };
      };
    }