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
      specVersion = "1.18";
      identifier = { name = "safe"; version = "0.3.14"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2007-2017";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/safe#readme";
      url = "";
      synopsis = "Library of safe (exception free) functions";
      description = "A library wrapping @Prelude@/@Data.List@ functions that can throw exceptions, such as @head@ and @!!@.\nEach unsafe function has up to four variants, e.g. with @tail@:\n\n* @tail :: [a] -> [a]@, raises an error on @tail []@.\n\n* @tailMay :: [a] -> /Maybe/ [a]@, turns errors into @Nothing@.\n\n* @tailDef :: /[a]/ -> [a] -> [a]@, takes a default to return on errors.\n\n* @tailNote :: /String/ -> [a] -> [a]@, takes an extra argument which supplements the error message.\n\n* @tailSafe :: [a] -> [a]@, returns some sensible default if possible, @[]@ in the case of @tail@.\n\nThis package is divided into three modules:\n\n* \"Safe\" contains safe variants of @Prelude@ and @Data.List@ functions.\n\n* \"Safe.Foldable\" contains safe variants of @Foldable@ functions.\n\n* \"Safe.Exact\" creates crashing versions of functions like @zip@ (errors if the lists are not equal) and @take@ (errors if there are not enough elements), then wraps them to provide safe variants.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      tests = {
        "safe-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."safe" or (buildDepError "safe"))
            ];
          };
        };
      };
    }