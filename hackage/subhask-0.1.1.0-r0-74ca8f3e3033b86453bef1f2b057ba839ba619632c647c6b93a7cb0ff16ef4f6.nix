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
      specVersion = "1.10";
      identifier = { name = "subhask"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike Izbicki";
      homepage = "http://github.com/mikeizbicki/subhask";
      url = "";
      synopsis = "Type safe interface for programming in subcategories of Hask";
      description = "SubHask is a radical rewrite of the Haskell <https://www.haskell.org/onlinereport/standard-prelude.htm Prelude>.\nThe goal is to make numerical computing in Haskell fun and fast.\nThe main idea is to use a type safe interface for programming in arbitrary subcategories of <https://wiki.haskell.org/Hask Hask>.\nFor example, the category <http://ncatlab.org/nlab/show/Vect Vect> of linear functions is a subcategory of Hask, and SubHask exploits this fact to give a nice interface for linear algebra.\nTo achieve this goal, almost every class hierarchy is redefined to be more general.\nI recommend reading the <http://github.com/mikeizbicki/subhask/blob/master/README.md README> file and the <http://github.com/mikeizbicki/subhask/blob/master/examples examples> before looking at the documetation here.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."monad-primitive" or (buildDepError "monad-primitive"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."erf" or (buildDepError "erf"))
          (hsPkgs."gamma" or (buildDepError "gamma"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bloomfilter" or (buildDepError "bloomfilter"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."hyperloglog" or (buildDepError "hyperloglog"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."bytes" or (buildDepError "bytes"))
          (hsPkgs."approximate" or (buildDepError "approximate"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "TestSuite-Unoptimized" = {
          depends = [
            (hsPkgs."subhask" or (buildDepError "subhask"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          buildable = true;
          };
        "Example0001" = {
          depends = [
            (hsPkgs."subhask" or (buildDepError "subhask"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "Example0002" = {
          depends = [
            (hsPkgs."subhask" or (buildDepError "subhask"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "Example0003" = {
          depends = [
            (hsPkgs."subhask" or (buildDepError "subhask"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "Vector" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."subhask" or (buildDepError "subhask"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          buildable = true;
          };
        };
      };
    }