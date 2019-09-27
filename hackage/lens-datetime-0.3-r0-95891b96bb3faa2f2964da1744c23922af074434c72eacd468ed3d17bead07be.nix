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
      specVersion = "1.6";
      identifier = { name = "lens-datetime"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mihaly Barasz <klao@nilcons.com>";
      author = "Mihaly Barasz <klao@nilcons.com>";
      homepage = "https://github.com/nilcons/lens-datetime";
      url = "";
      synopsis = "Lenses for Data.Time.* types";
      description = "The @lens-datetime@ library provides a unified lens based accessors\nto the various types in @Data.Time.Clock@, @Data.Time.Calendar@ and\n@Data.Time.LocalTime@. This library only tries to make some of the\ncommon use-cases convenient, it doesn't aim for completeness. If you\nwant completeness and/or efficiency try the @thyme@ package instead\n(<http://hackage.haskell.org/package/thyme>).\n\nDemonstration of basic uses.\n\n>import Control.Lens\n>import Data.Time\n>import Data.Time.Lens\n>\n>aDay :: Day\n>aDay = fromGregorian 2013 08 22\n>\n>aLocal :: LocalTime\n>aLocal = LocalTime aDay (TimeOfDay 13 45 28)\n>\n>aUTC :: UTCTime\n>aUTC = UTCTime aDay 7458.9\n\nYou can then do the following:\n\n>> aLocal ^. years\n>2013\n>> aUTC ^. months\n>8\n>> aLocal & time .~ midnight\n>2013-08-22 00:00:00\n>> aUTC & days .~ 1 & months .~ 1\n>2013-01-01 02:04:18.9 UTC\n\nYou can manipulate the date-time values with proper roll-over\nbehavior via the @FlexibleDateTime@ mechanism:\n\n>> aLocal & flexDT.months +~ 12\n>2014-08-22 13:45:28\n>> aUTC & flexDT.days +~ 100\n>2013-11-30 02:04:18.9 UTC\n>> aLocal & flexDT.minutes +~ 120\n>2013-08-22 15:45:28\n>> aLocal & flexDT %~ ((days +~ 7) . (hours +~ 2))\n>2013-08-22 13:45:28";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }