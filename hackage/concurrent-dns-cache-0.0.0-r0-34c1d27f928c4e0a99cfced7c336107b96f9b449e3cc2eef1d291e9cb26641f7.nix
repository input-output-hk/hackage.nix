{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "concurrent-dns-cache"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "Concurrent DNS cache";
      description = "Concurrent DNS cache";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dns)
          (hsPkgs.hashable)
          (hsPkgs.iproute)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.time)
          ];
        };
      exes = {
        "main" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dns)
            (hsPkgs.hashable)
            (hsPkgs.iproute)
            (hsPkgs.network)
            (hsPkgs.stm)
            (hsPkgs.time)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dns)
            (hsPkgs.concurrent-dns-cache)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }