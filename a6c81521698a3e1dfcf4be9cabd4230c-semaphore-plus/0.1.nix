{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "semaphore-plus";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) Swansea University 2009";
        maintainer = "Robin Green <greenrd@greenrd.org>";
        author = "Robin Green";
        homepage = "";
        url = "";
        synopsis = "Various concurrency abstractions built on top of semaphores";
        description = "Provides the LightSwitch and the non-starvable Readers-Writer lock\nfrom \"A Little Book of Semaphores\"";
        buildType = "Simple";
      };
      components = {
        semaphore-plus = {
          depends  = [ hsPkgs.base ];
        };
      };
    }