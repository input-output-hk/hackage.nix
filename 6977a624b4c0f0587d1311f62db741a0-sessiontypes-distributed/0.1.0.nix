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
      specVersion = "1.10";
      identifier = {
        name = "sessiontypes-distributed";
        version = "0.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "2017 Ferdinand van Walree";
      maintainer = "Ferdinand van Walree";
      author = "Ferdinand van Walree";
      homepage = "https://github.com/Ferdinand-vW/sessiontypes-distributed#readme";
      url = "";
      synopsis = "Session types distributed";
      description = "This package serves as a wrapper over both the Cloud Haskell library (distributed-process) and the sessiontypes library.\nIt provides an interpreter for evaluating session typed programs to Cloud Haskell programs and exposes several combinators for spawning sessions.";
      buildType = "Simple";
    };
    components = {
      "sessiontypes-distributed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sessiontypes)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-static)
          (hsPkgs.exceptions)
          (hsPkgs.rank1dynamic)
        ];
      };
      tests = {
        "sessiontypes-distributed-spawn" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sessiontypes-distributed)
            (hsPkgs.sessiontypes)
            (hsPkgs.hspec)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
          ];
        };
        "sessiontypes-distributed-lifted" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sessiontypes-distributed)
            (hsPkgs.sessiontypes)
            (hsPkgs.hspec)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
          ];
        };
      };
    };
  }