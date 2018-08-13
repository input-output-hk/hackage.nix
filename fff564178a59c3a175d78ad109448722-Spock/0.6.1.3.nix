{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Spock";
        version = "0.6.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 - 2014 Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "https://github.com/agrafix/Spock";
      url = "";
      synopsis = "Another Haskell web framework for rapid development";
      description = "This toolbox provides everything you need to get a quick start into web hacking with haskell: routing, middleware, json, blaze, sessions, cookies, database helper, csrf-protection, global state";
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
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.digestive-functors)
          (hsPkgs.directory)
          (hsPkgs.hashable)
          (hsPkgs.http-types)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.path-pieces)
          (hsPkgs.pool-conduit)
          (hsPkgs.random)
          (hsPkgs.regex-compat)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.vault)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.xsd)
        ];
      };
      tests = {
        "spocktests" = {
          depends  = [
            (hsPkgs.HTF)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.digestive-functors)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.http-types)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.path-pieces)
            (hsPkgs.pool-conduit)
            (hsPkgs.random)
            (hsPkgs.regex-compat)
            (hsPkgs.resource-pool)
            (hsPkgs.resourcet)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.vault)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.xsd)
          ];
        };
      };
    };
  }