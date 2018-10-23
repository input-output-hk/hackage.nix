{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Spock";
        version = "0.7.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 - 2014 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/Spock";
      url = "";
      synopsis = "Another Haskell web framework for rapid development";
      description = "This toolbox provides everything you need to get a quick start into web hacking with haskell: fast routing, middleware, json, blaze, sessions, cookies, database helper, csrf-protection";
      buildType = "Simple";
    };
    components = {
      "Spock" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.digestive-functors)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.path-pieces)
          (hsPkgs.random)
          (hsPkgs.reroute)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
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
            (hsPkgs.text)
            (hsPkgs.wai)
          ];
        };
      };
    };
  }