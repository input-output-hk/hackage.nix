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
      specVersion = "1.10";
      identifier = {
        name = "tls-session-manager";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kazu@iij.ad.jp";
      author = "Kazu Yamamoto";
      homepage = "";
      url = "";
      synopsis = "In-memory TLS session manager";
      description = "TLS session manager with limitation, automatic pruning, energy saving and replay resistance";
      buildType = "Simple";
    };
    components = {
      "tls-session-manager" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.auto-update)
          (hsPkgs.clock)
          (hsPkgs.psqueues)
          (hsPkgs.tls)
        ];
      };
    };
  }