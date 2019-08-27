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
      identifier = { name = "ipopt-hs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "haskell binding to ipopt including automatic differentiation";
      description = "a haskell binding to the nonlinear programming solver ipopt\n<http://projects.coin-or.org/Ipopt>\n\n[@installation@]\nneeds ipopt installed: For example if you have a\n`/usr/include/coin/IpStdCInterface.h` from your ipopt installation,\nuse:\n\n> cabal install ipopt-hs --extra-include-dirs=/usr/include/coin\n\nA embedded language, similar to the one provided by glpk-hs, is\ndefined in \"Ipopt.NLP\". The goal is to define problems at a level\nsimilar to other \"algebraic modeling languages\", but retain some\nof the safety and flexibility available in haskell.\n\nRefer to @examples/Test1.hs@ for an example where the derivatives\nare computed by hand, @Test2.hs@ for the use of\n'createIpoptProblemAD' and @Test3.hs@ for the highest level.\n\nCurrent limitations include:\n\n* copying in every iteration happens between between\n\"Data.Vector.Storable\" and \"Data.Vector\" might be avoidable\nsomehow.  Currently it is done because AD needs a Traversable\nstructure, but Storable vectors are not traversable.\n\n* sparseness of derivatives isn't used to decide which way to calculate (forward vs. backward mode)\n\n* probably doesn't work if @IpStdCInterface.h@ has Number =/= 'CDouble'\n\n* no binding to SetIntermediateCallback\n\n* garbage collection of 'IpProblem' won't free C-side resources";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."ad" or (buildDepError "ad"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        pkgconfig = [ (pkgconfPkgs."ipopt" or (pkgConfDepError "ipopt")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        };
      exes = {
        "ipopt-hs_Test1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ipopt-hs" or (buildDepError "ipopt-hs"))
            ];
          };
        "ipopt-hs_Test2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ipopt-hs" or (buildDepError "ipopt-hs"))
            ];
          };
        "ipopt-hs_Test3" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ipopt-hs" or (buildDepError "ipopt-hs"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }