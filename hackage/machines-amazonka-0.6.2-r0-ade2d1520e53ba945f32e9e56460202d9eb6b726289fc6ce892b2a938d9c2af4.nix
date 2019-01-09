{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "machines-amazonka"; version = "0.6.2"; };
      license = "GPL-3.0-only";
      copyright = "©2017 Evan Cofsky";
      maintainer = "evan@theunixman.com";
      author = "Evan Cofsky";
      homepage = "";
      url = "";
      synopsis = "Machine transducers for Amazonka calls.";
      description = "This provides several modules for managing AWS\nresources using the Machines library. It supports\nrequest modifiers, arbitrary filters, and\npaginated responses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-ec2)
          (hsPkgs.amazonka-s3)
          (hsPkgs.amazonka-sts)
          (hsPkgs.lifted-async)
          (hsPkgs.base)
          (hsPkgs.concurrent-machines)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.free)
          (hsPkgs.focus)
          (hsPkgs.hashable)
          (hsPkgs.liblawless)
          (hsPkgs.list-t)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
          (hsPkgs.time)
          (hsPkgs.transformers)
          ];
        };
      };
    }