{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      quickcheck = false;
      smallcheck = false;
      hunit = false;
      hspec = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "DMuCheck";
        version = "0.3.0.2";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "rahul@gopinath.org";
      author = "Rahul Gopinath <rahul@gopinath.org>";
      homepage = "https://bitbucket.com/osu-testing/d-mucheck";
      url = "";
      synopsis = "Distributed Mutation Analysis framework for MuCheck";
      description = "This package is a wrapper over the mutation analysis\nlibrary MuCheck. It provides a basic process based\nparallelization of mutant execution, and also a\nclient and server based distributed mode of mutant\nexecution. Currently it supports QuickCheck, SmallCheck,\nHUnit and HSpec";
      buildType = "Simple";
    };
    components = {
      exes = {
        "d-mucheck" = {
          depends  = ((([
            (hsPkgs.base)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.directory)
            (hsPkgs.hint)
            (hsPkgs.unix)
            (hsPkgs.binary)
            (hsPkgs.MuCheck)
          ] ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs.MuCheck-QuickCheck)) ++ pkgs.lib.optional (flags.smallcheck) (hsPkgs.MuCheck-SmallCheck)) ++ pkgs.lib.optional (flags.hunit) (hsPkgs.MuCheck-HUnit)) ++ pkgs.lib.optional (flags.hspec) (hsPkgs.MuCheck-Hspec);
        };
        "d-master" = {
          depends  = ((([
            (hsPkgs.base)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.directory)
            (hsPkgs.hint)
            (hsPkgs.unix)
            (hsPkgs.binary)
            (hsPkgs.MuCheck)
          ] ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs.MuCheck-QuickCheck)) ++ pkgs.lib.optional (flags.smallcheck) (hsPkgs.MuCheck-SmallCheck)) ++ pkgs.lib.optional (flags.hunit) (hsPkgs.MuCheck-HUnit)) ++ pkgs.lib.optional (flags.hspec) (hsPkgs.MuCheck-Hspec);
        };
        "d-slave" = {
          depends  = ((([
            (hsPkgs.base)
            (hsPkgs.distributed-process-simplelocalnet)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.directory)
            (hsPkgs.hint)
            (hsPkgs.unix)
            (hsPkgs.binary)
            (hsPkgs.MuCheck)
          ] ++ pkgs.lib.optional (flags.quickcheck) (hsPkgs.MuCheck-QuickCheck)) ++ pkgs.lib.optional (flags.smallcheck) (hsPkgs.MuCheck-SmallCheck)) ++ pkgs.lib.optional (flags.hunit) (hsPkgs.MuCheck-HUnit)) ++ pkgs.lib.optional (flags.hspec) (hsPkgs.MuCheck-Hspec);
        };
        "dummy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.MuCheck)
          ];
        };
      };
    };
  }