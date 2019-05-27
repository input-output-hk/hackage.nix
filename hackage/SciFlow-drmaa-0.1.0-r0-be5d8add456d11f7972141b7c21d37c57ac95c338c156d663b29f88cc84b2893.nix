{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SciFlow-drmaa"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2019 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Scientific workflow management system";
      description = "DRMAA backend for SciFlow";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.drmaa)
          (hsPkgs.unordered-containers)
          (hsPkgs.distributed-process)
          (hsPkgs.network-transport-tcp)
          (hsPkgs.hostname)
          (hsPkgs.stm)
          (hsPkgs.random)
          (hsPkgs.SciFlow)
          ];
        };
      };
    }