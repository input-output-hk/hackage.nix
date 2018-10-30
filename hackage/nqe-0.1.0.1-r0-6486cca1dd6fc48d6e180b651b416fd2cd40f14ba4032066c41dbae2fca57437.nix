{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nqe";
        version = "0.1.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "https://github.com/xenog/nqe#readme";
      url = "";
      synopsis = "Concurrency library in the style of Erlang/OTP";
      description = "Minimalistic actor library inspired by Erlang/OTP with support for supervisor hierarchies and asynchronous messages, as well as abstractions for synchronous communication and easy management of TCP connections.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.stm)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "nqe-test" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.nqe)
            (hsPkgs.stm)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }