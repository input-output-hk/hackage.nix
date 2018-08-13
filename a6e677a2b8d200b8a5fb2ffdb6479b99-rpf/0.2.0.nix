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
      specVersion = "1.6";
      identifier = {
        name = "rpf";
        version = "0.2.0";
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
        "rpf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.hdaemonize)
            (hsPkgs.hslogger)
            (hsPkgs.parsec)
            (hsPkgs.appar)
            (hsPkgs.c10k)
            (hsPkgs.iproute)
            (hsPkgs.dns)
            (hsPkgs.domain-auth)
          ];
        };
      };
    };
  }