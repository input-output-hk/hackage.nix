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
      specVersion = "1.8";
      identifier = {
        name = "Spock";
        version = "0.7.10.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 - 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "http://www.spock.li";
      url = "";
      synopsis = "Another Haskell web framework for rapid development";
      description = "This toolbox provides everything you need to get a quick start into web hacking with haskell:\n\n* fast routing\n* middleware\n* json\n* sessions\n* cookies\n* database helper\n* csrf-protection\n\nA tutorial is available at <http://www.spock.li/tutorial/ spock.li>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.list-t)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.path-pieces)
          (hsPkgs.random)
          (hsPkgs.reroute)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.vault)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
        ];
      };
      tests = {
        "spocktests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.Spock)
            (hsPkgs.stm)
            (hsPkgs.reroute)
            (hsPkgs.text)
            (hsPkgs.wai)
          ];
        };
      };
      benchmarks = {
        "spock-simple-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Spock)
          ];
        };
      };
    };
  }