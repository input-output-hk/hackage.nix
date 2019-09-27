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
      identifier = { name = "herf-time"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott Murphy <scottmurphy09@gmail.com>";
      author = "Scott Murphy <scottmurphy09@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "haskell time manipulation in a 'kerf like' style.";
      description = "The herf-time package attempts to make the time package's syntax more straightforward for doing interval math and conversion.\nIt borrows heavily from the syntax of the kerf programming language <https://github.com/kevinlawler/kerf> .\nBut unlike kerf, there are no promisses of high performance code here.\nThe performance seems adequate for lots of uses though and manipulating time in the herf library is pretty fun.\n\nThe @KerfTime@ module is self contained and the only dependency is the time package.\n\nAdd intervals of varying amounts.\n\n> date 2016 01 01 `add` hour 3 `add` week 16 `add` month 3 :: UTCHerfTime\nUTCHerfTime 2016-07-22 03:00:00 UTC\n\nSubtract intervals as well\n\n> date 2016 01 01 `add` hour (-3) `add` week (-16) `add` month (-3) :: UTCHerfTime\nUTCHerfTime 2015-06-10 21:00:00 UTC\n\nUse the same interval notation for different time representation\n\n> dateTime 2016 01 01 01 23 01 `add` (hour 3) `add` (week 16) `add` (month 3) :: UTCHerfTime\nUTCHerfTime 2016-07-22 04:23:01 UTC\n\n> (reherf \$ ( dateTime 2016 01 01 01 01 01 :: HerfZonedTime \"CST\")) :: HerfZonedTime \"PST\"\n2015-12-31T23:01:01:PST\n\n> zt <- getZonedTime\n\n> herfShow zt\n\"2016-01-21T11:29:05:CST\"\n\n> reherfz zt :: HerfZonedTime \"PST\"\n2016-01-21T09:29:05:PST\n\n> reherfz zt :: HerfZonedTime \"+0600\"\n2016-01-21T23:29:05:+0600\n\n> reherfz zt :: HerfZonedTime \"CST\"\n2016-01-21T11:29:05:CST\n\n> (reherfz zt) `add` month 2 :: HerfZonedTime \"CST\"\n2016-03-21T11:29:05:CST\n\n> (reherfz zt) `add` month 2 :: HerfZonedTime \"PST\"\n2016-03-21T09:29:05:PST\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."herf-time" or (buildDepError "herf-time"))
            ];
          buildable = true;
          };
        };
      };
    }