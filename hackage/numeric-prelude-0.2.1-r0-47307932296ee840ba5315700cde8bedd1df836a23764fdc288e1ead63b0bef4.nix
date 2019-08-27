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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "numeric-prelude"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <numericprelude@henning-thielemann.de>";
      author = "Dylan Thurston <dpt@math.harvard.edu>, Henning Thielemann <numericprelude@henning-thielemann.de>, Mikael Johansson";
      homepage = "http://www.haskell.org/haskellwiki/Numeric_Prelude";
      url = "";
      synopsis = "An experimental alternative hierarchy of numeric type classes";
      description = "Revisiting the Numeric Classes\n\nThe Prelude for Haskell 98 offers a well-considered set of numeric classes\nwhich covers the standard numeric types\n('Integer', 'Int', 'Rational', 'Float', 'Double', 'Complex') quite well.\nBut they offer limited extensibility and have a few other flaws.\nIn this proposal we will revisit these classes, addressing the following concerns:\n\n[1] The current Prelude defines no semantics for the fundamental operations.\nFor instance, presumably addition should be associative\n(or come as close as feasible),\nbut this is not mentioned anywhere.\n\n[2] There are some superfluous superclasses.\nFor instance, 'Eq' and 'Show' are superclasses of 'Num'.\nConsider the data type\n@   data IntegerFunction a = IF (a -> Integer) @\nOne can reasonably define all the methods of 'Algebra.Ring.C' for\n@IntegerFunction a@ (satisfying good semantics),\nbut it is impossible to define non-bottom instances of 'Eq' and 'Show'.\nIn general, superclass relationship should indicate\nsome semantic connection between the two classes.\n\n[3] In a few cases, there is a mix of semantic operations and\nrepresentation-specific operations.\n'toInteger', 'toRational',\nand the various operations in 'RealFloating' ('decodeFloat', ...)\nare the main examples.\n\n[4] In some cases, the hierarchy is not finely-grained enough:\nOperations that are often defined independently are lumped together.\nFor instance, in a financial application one might want a type \\\"Dollar\\\",\nor in a graphics application one might want a type \\\"Vector\\\".\nIt is reasonable to add two Vectors or Dollars,\nbut not, in general, reasonable to multiply them.\nBut the programmer is currently forced to define a method for '(*)'\nwhen she defines a method for '(+)'.\n\nIn specifying the semantics of type classes,\nI will state laws as follows:\n\n>    (a + b) + c === a + (b + c)\n\nThe intended meaning is extensional equality:\nThe rest of the program should behave in the same way\nif one side is replaced with the other.\nUnfortunately, the laws are frequently violated by standard instances;\nthe law above, for instance, fails for 'Float':\n\n>    (1e20 + (-1e20)) + 1.0  = 1.0\n>     1e20 + ((-1e20) + 1.0) = 0.0\n\nFor inexact number types like floating point types,\nthus these laws should be interpreted as guidelines rather than absolute rules.\nIn particular, the compiler is not allowed to use them for optimization.\nUnless stated otherwise, default definitions should also be taken as laws.\n\nThanks to Brian Boutel, Joe English, William Lee Irwin II, Marcin\nKowalczyk, Ketil Malde, Tom Schrijvers, Ken Shan, and Henning\nThielemann for helpful comments.\n\n\nUsage:\n\nWrite modules in the following style:\n\n> [-# NoImplicitPrelude #-]\n> module MyModule where\n>\n> ... various specific imports ...\n>\n> import NumericPrelude\n\nImporting @NumericPrelude@ is almost the same as\n\n> import NumericPrelude.Numeric\n> import NumericPrelude.Base   .\n\nInstead of the @NoImplicitPrelude@ pragma\nyou could also write @import Prelude ()@\nbut this will yield problems with numeric literals.\n\n\nScope & Limitations\\/TODO:\n\n* It might be desireable to split Ord up into Poset and Ord\n(a total ordering).\nThis is not addressed here.\n\n* In some cases, this hierarchy may not yet be fine-grained enough.\nFor instance, time spans (\\\"5 minutes\\\") can be added to times (\\\"12:34\\\"),\nbut two times are not addable. (\\\"12:34 + 8:23\\\")\nAs it stands,\nusers have to use a different operator for adding time spans to times\nthan for adding two time spans.\nSimilar issues arise for vector space et al.\nThis is a consciously-made tradeoff, but might be changed.\nThis becomes most serious when dealing with quantities with units\nlike @length\\/distance^2@, for which @(*)@ as defined here is useless.\n(One way to see the issue: should\n@  f x y = iterate (x *) y  @\nhave principal type\n@  (Ring.C a) => a -> a -> [a]  @\nor something like\n@  (Ring.C a, Module a b) => a -> b -> [b]  @\n?)\n\n* I stuck with the Haskell 98 names.\nIn some cases I find them lacking.\nNeglecting backwards compatibility, we have renamed classes as follows:\nNum           --> Additive, Ring, Absolute\nIntegral      --> ToInteger, IntegralDomain, RealIntegral\nFractional    --> Field\nFloating      --> Algebraic, Transcendental\nReal          --> ToRational\nRealFrac      --> RealRing, RealField\nRealFloat     --> RealTranscendental\n\n\nAdditional standard libraries might include Enum, IEEEFloat (including\nthe bulk of the functions in Haskell 98's RealFloat class),\nVectorSpace, Ratio, and Lattice.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      exes = {
        "test" = {};
        "testsuite" = {
          depends = (pkgs.lib).optional (flags.buildtests) (hsPkgs."HUnit" or (buildDepError "HUnit"));
          };
        "test-gaussian" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
            (hsPkgs."HTam" or (buildDepError "HTam"))
            ];
          };
        };
      };
    }