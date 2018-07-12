{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "schedyield";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mjgajda@googlemail.com";
        author = "Michal J. Gajda";
        homepage = "";
        url = "";
        synopsis = "Exposes standard POSIX function sched_yield.";
        description = "sched_yield is useful, when starting many processes, and waiting for them to complete. It yields CPU time (forces context switch.)";
        buildType = "Simple";
      };
      components = {
        "schedyield" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }