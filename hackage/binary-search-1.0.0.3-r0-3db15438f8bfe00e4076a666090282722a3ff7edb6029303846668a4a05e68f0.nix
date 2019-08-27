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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "binary-search"; version = "1.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Takayuki Muranushi <muranushi@gmail.com>";
      author = "Ross Paterson <ross@soi.city.ac.uk>, Takayuki Muranushi <muranushi@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Binary and exponential searches";
      description = "__Introduction__\n\nThis package provides varieties of binary search functions.\nc.f.  \"Numeric.Search\" for the examples.\n\nThese search function can search for pure and monadic predicates, of type:\n\n> pred :: Eq b => a -> b\n> pred :: (Eq b, Monad m) => a -> m b\n\nThe predicates must satisfy that the domain range for any codomain value\nis continuous; that is, @∀x≦y≦z. pred x == pred z ⇒ pred y == pred x@ .\n\nFor example, we can address the problem of finding the boundary\nof an upward-closed set of integers, using a combination\nof exponential and binary searches.\n\nVariants are provided\nfor searching within bounded and unbounded intervals of\nboth 'Integer' and bounded integral types.\n\nThe package was created by Ross Paterson, and extended\nby Takayuki Muranushi, to be used together with SMT solvers.\n\n__The Module Structure__\n\n*  \"Numeric.Search\" provides the generic search combinator, to search for pure and monadic predicates.\n*  \"Numeric.Search.Bounded\" ,  \"Numeric.Search.Integer\" ,  \"Numeric.Search.Range\" provides the various specialized searchers, which means less number of function arguments, and easier to use.\n\n<<https://travis-ci.org/nushio3/binary-search.svg?branch=master>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary-search" or (buildDepError "binary-search"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }