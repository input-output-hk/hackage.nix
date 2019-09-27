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
      specVersion = "1.6.0.1";
      identifier = { name = "type-digits"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Arbitrary-base type-level digits";
      description = "This is a workaround until type-level literals (specifically\nnaturals) are more fully supported. The main difference is that these\ntypes-level digits and numerals can be inspected/case-discriminated within\ntype family instances. See the @type-ord@ and @type-cereal@ packages for use\ncases; they ultimately support the @yoko@ package.\nArbitrary type-level digits, for when the radix itself doesn't\nactually matter. It's currently base-128, because that seemed to best\nexpedite the compilation of the modules with which I using this\npackage. Please let me know what you find if you experiment with this.\n'Type.Digits.radix' is the (arbitrary) radix. 'Type.Digits.digit' computes\nthe 'NameG' of a digit from its value (assuming its less than the\nradix). Combinators are provided to compute a full type-level numeral from\nvalues (potentially) larger than the radix.\nThe digits themselves all take less significant numeral as an argument. I\nchose this over minimal digits in promoted lists because I wanted to keep the\nactual encoding of type-level numeral smaller; they get quite large with some\nof my uses and the type family computation becomes quite slow.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."type-spine" or (buildDepError "type-spine"))
          ];
        buildable = true;
        };
      };
    }