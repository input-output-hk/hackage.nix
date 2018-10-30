{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "flight-kml";
        version = "1.0.0";
      };
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
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.detour-via-sci)
          (hsPkgs.hxt)
          (hsPkgs.hxt-xpath)
          (hsPkgs.parsec)
          (hsPkgs.path)
          (hsPkgs.siggy-chardust)
          (hsPkgs.split)
          (hsPkgs.time)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.detour-via-sci)
            (hsPkgs.doctest)
            (hsPkgs.hlint)
            (hsPkgs.hxt)
            (hsPkgs.hxt-xpath)
            (hsPkgs.parsec)
            (hsPkgs.path)
            (hsPkgs.siggy-chardust)
            (hsPkgs.split)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.detour-via-sci)
            (hsPkgs.hlint)
            (hsPkgs.hxt)
            (hsPkgs.hxt-xpath)
            (hsPkgs.parsec)
            (hsPkgs.path)
            (hsPkgs.siggy-chardust)
            (hsPkgs.split)
            (hsPkgs.time)
          ];
        };
        "parse" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.detour-via-sci)
            (hsPkgs.hxt)
            (hsPkgs.hxt-xpath)
            (hsPkgs.parsec)
            (hsPkgs.path)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.siggy-chardust)
            (hsPkgs.smallcheck)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.time)
          ];
        };
      };
    };
  }