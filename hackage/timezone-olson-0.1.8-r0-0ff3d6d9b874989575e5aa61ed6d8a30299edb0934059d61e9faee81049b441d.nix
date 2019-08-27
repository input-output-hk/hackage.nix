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
      identifier = { name = "timezone-olson"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010-2015 Yitzchak Gale. All rights reserved.";
      maintainer = "yitz@sefer.org";
      author = "Yitzchak Gale";
      homepage = "http://projects.haskell.org/time-ng/";
      url = "";
      synopsis = "A pure Haskell parser and renderer for binary Olson timezone files";
      description = "A parser and renderer for binary Olson timezone\nfiles whose format is specified by the tzfile(5)\nman page on Unix-like systems. For more\ninformation about this format, see\n<http://www.iana.org/time-zones/repository/tz-link.html>.\nFunctions are provided for converting the parsed data into\n'TimeZoneSeries' objects from the timezone-series\npackage. On many platforms, binary Olson timezone\nfiles suitable for use with this package are\navailable in the directory /usr/share/zoneinfo\nand its subdirectories on your computer.\nFor a way to read binary Olson timezone files at compile\ntime, see the timezone-olson-th package\n(<http://hackage.haskell.org/package/timezone-olson-th>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."timezone-series" or (buildDepError "timezone-series"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          ];
        };
      };
    }