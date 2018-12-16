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
        version = "0.6.1";
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
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.unique)
          (hsPkgs.unliftio)
        ];
      };
      tests = {
        "nqe-test" = {
          depends = [
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
            (hsPkgs.unliftio)
          ];
        };
      };
    };
  }