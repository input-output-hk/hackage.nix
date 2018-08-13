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
        version = "0.4.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 - 2014 Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "https://github.com/agrafix/Spock";
      url = "";
      synopsis = "Another Haskell web toolkit based on scotty";
      description = "This toolbox provides everything you need to get a quick start into web hacking with haskell: sessions, cookies, database helper, csrf-protection, global state and the power of scotty";
      buildType = "Simple";
    };
    components = {
      "Spock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.scotty)
          (hsPkgs.wai)
          (hsPkgs.wai-util)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.wai-extra)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.unordered-containers)
          (hsPkgs.old-locale)
          (hsPkgs.base64-bytestring)
          (hsPkgs.time)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.xsd)
          (hsPkgs.resource-pool)
          (hsPkgs.random)
          (hsPkgs.pool-conduit)
          (hsPkgs.vault)
          (hsPkgs.path-pieces)
          (hsPkgs.hashable)
          (hsPkgs.blaze-html)
          (hsPkgs.digestive-functors)
        ];
      };
    };
  }