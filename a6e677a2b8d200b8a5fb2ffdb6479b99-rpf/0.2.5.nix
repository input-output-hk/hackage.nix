{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rpf";
          version = "0.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/rpf/";
        url = "";
        synopsis = "Receiver Policy Framework";
        description = "Receiver Policy Framework (RPF) is a Milter\nprogram to change actions of e-mail receiver\nside according to results of the anti-spam\ntechnologies.";
        buildType = "Simple";
      };
      components = {
        exes = {
          rpf = {
            depends  = [
              hsPkgs.base
              hsPkgs.appar
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.c10k
              hsPkgs.containers
              hsPkgs.dns
              hsPkgs.domain-auth
              hsPkgs.hslogger
              hsPkgs.iproute
              hsPkgs.parsec
              hsPkgs.unix
            ];
          };
        };
      };
    }