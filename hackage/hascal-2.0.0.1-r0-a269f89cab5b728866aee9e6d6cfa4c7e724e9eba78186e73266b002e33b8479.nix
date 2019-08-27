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
      identifier = { name = "hascal"; version = "2.0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "2012 Mekeor Melire";
      maintainer = "Mekeor Melire <mekeor.melire@googlemail.com>";
      author = "Mekeor Melire <mekeor.melire@googlemail.com>";
      homepage = "http://darcsden.com/mekeor/hascal";
      url = "";
      synopsis = "A minimalistic but extensible and precise calculator";
      description = "Hascal is both a simple but extendable calculator library for\nHaskell as well as a command-line program using this library.\n\nHascal supports addition, subtraction, multiplication, division,\nexponentiation, and logarithm, while it's easy to add custom\noperators.\n\nHascal also supports complex numbers. Hascal can work at an\narbitrary precision. However, Hascal does not support\nparenthesis.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      exes = {
        "hascal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."numbers" or (buildDepError "numbers"))
            ];
          };
        };
      tests = {
        "test" = { depends = [ (hsPkgs."HUnit" or (buildDepError "HUnit")) ]; };
        };
      };
    }