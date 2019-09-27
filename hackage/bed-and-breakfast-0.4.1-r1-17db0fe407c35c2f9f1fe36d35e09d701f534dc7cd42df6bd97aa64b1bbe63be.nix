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
      identifier = { name = "bed-and-breakfast"; version = "0.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://hub.darcs.net/scravy/bed-and-breakfast";
      url = "";
      synopsis = "Efficient Matrix operations in 100% Haskell.";
      description = "Efficient Matrix operations in 100% Haskell.\n\n[@v0.1@] Initial version, features @det@,\nbasic arithmetic operations, and instances for\n'Float', 'Double', 'Complex', and 'Rational'.\n\n[@v0.1.1@] Fixed wrong algorithm for computing the\ninverse of a 'Matrix'.\n\n[@v0.1.2@] Added instances for @Num Matrix@,\n@Fractional Matrix@, and @Eq Matrix@.\n\n[@v0.1.3@] @inv@ is now a total function and will\nno longer call `error' if a matrix is not\ninvertible. Also @Matrix@ derives 'Data.Typeable'\nnow.\n\n[@v0.1.4@] Added @scale@, and methods for joining\nmatrices vertically and horizontally. Corrected\na bug in @isUnit@ reported by Charles Durham.\n@isUnit@ returned True for any matrix for which\n@all (== 1) . trace@ would have, which is wrong).\n\n[@v0.2@] A little bit more documentation. Also moved some\nfunctions (@isXXX@) away from the type class @MatrixElement@.\nProperly flagged the package as experimental (was\nimproperly marked as @stable@, copied form a\ntemplate).\n\n[@v0.2.1@] Added @cofactors@, @adjugate@, @minor@, and\n@minorMatrix@.\n\n[@v0.2.2@] @rank@ works now for any Matrix component type.\n\n[@v0.2.3@] Added 'Read' instance for @Matrix@.\nImproved on documentation.\n\n[@v0.3@] Added a QuickCheck test suite, fixed a bug in @det@\n(det would crash for singular matrices, where it should\nreturn 0).\n\n[@v0.3.1@] Added TemplateHaskell syntactic sugar (see\n\"Numeric.Matrix.Sugar\"). Rewrote multiplication.\n@matrix@ function build an array faster now.\n\n[@v0.3.2@] Numeric.Matrix.Sugar was not mentioned in the\ncabal file. Improved test suite. Improved documentation.\n\n[@v0.4@] Fixed a bug regarding @empty@ and @fromList@.\nUse unsafe operations where it is safe for speed.\nAdded RULES. Added an instance for binary.\n\n[@v0.4.1@] The unsafe operations used in v0.4 turned out\nto fatally fail on certain platforms. Revoked this\nchange. Thanks to Marcin Fatyga for pointing at the\nissue.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bed-and-breakfast" or (buildDepError "bed-and-breakfast"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }