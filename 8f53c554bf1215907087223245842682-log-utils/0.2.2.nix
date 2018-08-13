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
        name = "log-utils";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/log-utils";
      url = "";
      synopsis = "Utils for working with logs";
      description = "Two utilities for working with logs:\nlog-server and log-fetcher.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "log-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.hpqtypes)
            (hsPkgs.http-types)
            (hsPkgs.invariant)
            (hsPkgs.kontra-config)
            (hsPkgs.lifted-base)
            (hsPkgs.log)
            (hsPkgs.monad-control)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers-base)
            (hsPkgs.unjson)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
        "log-fetcher" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.hpqtypes)
            (hsPkgs.invariant)
            (hsPkgs.lifted-base)
            (hsPkgs.log)
            (hsPkgs.monad-control)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unjson)
          ];
        };
      };
    };
  }