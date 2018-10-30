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
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "https://github.com/xenog/nqe#readme";
      url = "";
      synopsis = "Concurrency library in the style of Erlang/OTP";
      description = "Follow the example of Erlang developing a minimalistic actor library with a\ndistinct Haskell flavour. It does not implement Erlang/OTP-style processes\nexactly, but it is merely inspired by their philosophy.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.async)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "nqe-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nqe)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.exceptions)
            (hsPkgs.async)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }