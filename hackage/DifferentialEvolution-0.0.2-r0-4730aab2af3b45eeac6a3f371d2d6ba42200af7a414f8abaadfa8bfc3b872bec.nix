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
      identifier = { name = "DifferentialEvolution"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "ville.tirronen@jyu.fi";
      author = "Ville Tirronen";
      homepage = "http://yousource.it.jyu.fi/optimization-with-haskell";
      url = "";
      synopsis = "Global optimization using Differential Evolution";
      description = "Plain Differential Evolution algorithm for optimizing\nreal-valued functions. For further info, see\nDifferential evolution: a practical approach\nto global optimization By Kenneth V. Price,\nRainer M. Storn, and Jouni A. Lampinen.\n\nThis Library is optimized and should achieve runtimes\nwith factor of 2 from c.\nFor optimal performance, pay some attention to\nrts memory parameters.\n\nExample in GHCi:\n\n>import Data.Vector.Unboxed as VUB\n>import Numeric.Optimization.Algorithms.DifferentialEvolution\n>\n>let fitness = VUB.sum . VUB.map (*2)\n>\n>de (defaultParams fitness ((VUB.replicate 60 0), (VUB.replicate 60 0)))";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          ];
        };
      };
    }