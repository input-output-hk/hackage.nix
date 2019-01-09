{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nqe"; version = "0.4.0"; };
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
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hspec)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.stm-conduit)
          (hsPkgs.text)
          (hsPkgs.unliftio)
          ];
        };
      tests = {
        "nqe-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
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