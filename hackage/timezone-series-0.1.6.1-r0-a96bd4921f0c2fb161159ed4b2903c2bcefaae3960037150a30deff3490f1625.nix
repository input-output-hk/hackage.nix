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
    flags = { time_pre_1_6 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "timezone-series"; version = "0.1.6.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010-2015 Yitzchak Gale. All rights reserved.";
      maintainer = "yitz@sefer.org";
      author = "Yitzchak Gale";
      homepage = "http://projects.haskell.org/time-ng/";
      url = "";
      synopsis = "Enhanced timezone handling for Data.Time";
      description = "This package endows Data.Time, from the time\npackage, with several data types and functions\nfor enhanced processing of timezones. For one way\nto create timezone series, see the timezone-olson\n(<http://hackage.haskell.org/package/timezone-olson>)\nand timezone-olson-th\n(<http://hackage.haskell.org/package/timezone-olson-th>)\npackages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ] ++ [
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      };
    }