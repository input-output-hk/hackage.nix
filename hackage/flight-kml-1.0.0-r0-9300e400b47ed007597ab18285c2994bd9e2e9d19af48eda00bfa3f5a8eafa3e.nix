{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "flight-kml"; version = "1.0.0"; };
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
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."detour-via-sci" or (errorHandler.buildDepError "detour-via-sci"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."siggy-chardust" or (errorHandler.buildDepError "siggy-chardust"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."detour-via-sci" or (errorHandler.buildDepError "detour-via-sci"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."siggy-chardust" or (errorHandler.buildDepError "siggy-chardust"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."detour-via-sci" or (errorHandler.buildDepError "detour-via-sci"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."siggy-chardust" or (errorHandler.buildDepError "siggy-chardust"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        "parse" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."detour-via-sci" or (errorHandler.buildDepError "detour-via-sci"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."siggy-chardust" or (errorHandler.buildDepError "siggy-chardust"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }