{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      threaded = false;
      static = false;
      llvm = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "PortFusion";
        version = "1.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright © 2012 Cetin Sert";
      maintainer = "Cetin Sert <fusion@corsis.eu>, Corsis Research";
      author = "Cetin Sert <fusion@corsis.eu>, Corsis Research";
      homepage = "http://fusion.corsis.eu";
      url = "http://fusion.corsis.eu";
      synopsis = "high-performance distributed reverse / forward proxy & tunneling for TCP";
      description = "PortFusion is a minimalistic, cross-platform, transport-layer\ndistributed reverse / forward proxy & tunneling solution for TCP\n(RDP, SSH, HTTP(S), (S)FTP, VNC, ...) released under GPLv3.\n\nA single package that makes the most of each platform by tapping\ninto their unique capabilities, combining this power with an\nintuitive interface, beautiful design and Haskell's excellent\nsupport for unprecedented levels of concurrency and parallelism.\n\nIt strives for the smallest source code size while delivering\nmaximum throughput with near zero overhead.\n\n[Official Binaries]\nvisit <http://fusion.corsis.eu> to download for:\n\n* Windows (: now also builds 64-bit, with GHC 7.6.1 or above *^o*^!! :)\n\n* GNU/Linux\n\n* Mac OS X\n\n* FreeBSD\n\n[Version Scheme]\nMajor-@/R/@-ewrite . New-@/F/@-unctionality . @/I/@-mprovementAndBugFixes . @/P/@-ackagingOnly\n\n* @PackagingOnly@ changes are made for quality assurance reasons.\n\n* No new official binary releases are made for @PackagingOnly@ changes.\n\n* Official @r.f.i@ binaries are bit-for-bit the same as @r.f.i.p@ builds for all @p@.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "PortFusion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.splice)
          ] ++ [ (hsPkgs.network) ];
        };
      };
    };
  }