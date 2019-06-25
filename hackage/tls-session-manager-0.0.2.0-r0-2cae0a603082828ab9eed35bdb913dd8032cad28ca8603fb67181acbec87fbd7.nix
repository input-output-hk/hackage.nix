{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tls-session-manager"; version = "0.0.2.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.auto-update)
          (hsPkgs.basement)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.memory)
          (hsPkgs.psqueues)
          (hsPkgs.tls)
          ];
        };
      };
    }