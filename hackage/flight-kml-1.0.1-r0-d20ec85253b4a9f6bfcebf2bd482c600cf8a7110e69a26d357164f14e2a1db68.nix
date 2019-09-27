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
      identifier = { name = "flight-kml"; version = "1.0.1"; };
      license = "MPL-2.0";
      copyright = "© 2017-2018 Phil de Joux, © 2017-2018 Block Scope Limited";
      maintainer = "phil.dejoux@blockscope.com";
      author = "Phil de Joux";
      homepage = "https://github.com/blockscope/flare-timing/tree/master/kml#readme";
      url = "";
      synopsis = "Parsing of pilot tracklogs dumped as KML.";
      description = "Provides parsing of dumped tracklogs. In hang gliding and paragliding competitions when FS and GpsDump are paired in competition mode a pilot's tracklog is dumped as KML. This is exlained in detail on the FS wiki.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."detour-via-sci" or (buildDepError "detour-via-sci"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."hxt-xpath" or (buildDepError "hxt-xpath"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."path" or (buildDepError "path"))
          (hsPkgs."siggy-chardust" or (buildDepError "siggy-chardust"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."detour-via-sci" or (buildDepError "detour-via-sci"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or (buildDepError "hxt-xpath"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."siggy-chardust" or (buildDepError "siggy-chardust"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = true;
          };
        "parse" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."detour-via-sci" or (buildDepError "detour-via-sci"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or (buildDepError "hxt-xpath"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."path" or (buildDepError "path"))
            (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
            (hsPkgs."siggy-chardust" or (buildDepError "siggy-chardust"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }