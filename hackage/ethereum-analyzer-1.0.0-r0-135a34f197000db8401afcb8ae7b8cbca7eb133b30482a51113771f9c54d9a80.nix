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
        name = "ethereum-analyzer";
        version = "1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "k_@berkeley.edu";
      author = "Kevin Chen";
      homepage = "https://github.com/ethereumK/ethereum-analyzer";
      url = "";
      synopsis = "A Ethereum contract analyzer.";
      description = "A Ethereum contract analyzer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bimap)
          (hsPkgs.bytestring)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.ethereum-analyzer-deps)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.fgl)
          (hsPkgs.graphviz)
          (hsPkgs.hexstring)
          (hsPkgs.hflags)
          (hsPkgs.hoopl)
          (hsPkgs.http-conduit)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.json-rpc)
          (hsPkgs.logging-effect)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.neat-interpolation)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.prometheus-client)
          (hsPkgs.prometheus-metrics-ghc)
          (hsPkgs.protolude)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-middleware-prometheus)
          (hsPkgs.warp)
          (hsPkgs.wl-pprint-text)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ethereum-analyzer)
            (hsPkgs.ethereum-analyzer-deps)
            (hsPkgs.extra)
            (hsPkgs.hoopl)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }