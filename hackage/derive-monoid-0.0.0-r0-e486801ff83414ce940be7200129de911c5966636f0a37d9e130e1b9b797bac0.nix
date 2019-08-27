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
      identifier = { name = "derive-monoid"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/derive-monoid#readme";
      url = "";
      synopsis = "derive Semigroup/Monoid/IsList";
      description = "when your type can hold a list of itself, you can derive simple (but total\\/lawful) Semigroup\\/Monoid\\/IsList instances with TemplateHaskell.\n\nsee the <https://hackage.haskell.org/package/derive-monoid/docs/Derive-List.html Derive.List> for examples and documentation.\nbrowse the <https://github.com/sboosali/derive-monoid/tree/master/test/Build/Derive/List test suite> for more (buildable) examples:\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/HigherKind.hs HigherKind>\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/IsList.hs IsList>\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/Monoid.hs Monoid>\n\n* <https://github.com/sboosali/derive-monoid/blob/master/test/Build/Derive/List/Semigroup.hs Semigroup>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."derive-monoid" or (buildDepError "derive-monoid"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."derive-monoid" or (buildDepError "derive-monoid"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ];
          };
        };
      };
    }