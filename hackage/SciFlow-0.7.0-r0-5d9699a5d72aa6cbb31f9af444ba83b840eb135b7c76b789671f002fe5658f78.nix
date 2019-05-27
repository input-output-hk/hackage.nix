{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SciFlow"; version = "0.7.0"; };
      license = "MIT";
      copyright = "(c) 2015-2019 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Scientific workflow management system";
      description = "SciFlow is a DSL for building type-safe computational workflows.\nSciFlow supports distributed computing through Cloud Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.constraints)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-process-monad-control)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.lifted-async)
          (hsPkgs.mtl)
          (hsPkgs.memory)
          (hsPkgs.monad-control)
          (hsPkgs.network-transport)
          (hsPkgs.network-transport-tcp)
          (hsPkgs.rainbow)
          (hsPkgs.stm)
          (hsPkgs.sqlite-simple)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.th-lift-instances)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }