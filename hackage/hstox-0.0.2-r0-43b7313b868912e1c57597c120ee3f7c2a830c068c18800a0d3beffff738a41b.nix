{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { library-only = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hstox"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "© 2016-2018 iphy";
      maintainer = "iphy";
      author = "iphy";
      homepage = "https://toktok.github.io";
      url = "";
      synopsis = "A Tox protocol implementation in Haskell";
      description = "A Tox protocol implementation in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary)
          (hsPkgs.binary-bits)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.data-msgpack)
          (hsPkgs.data-msgpack-types)
          (hsPkgs.entropy)
          (hsPkgs.integer-gmp)
          (hsPkgs.iproute)
          (hsPkgs.lens-family)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-msgpack-rpc)
          (hsPkgs.saltine)
          (hsPkgs.semigroups)
          (hsPkgs.random)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (!flags.library-only) (hsPkgs.hspec);
        };
      exes = {
        "tox-refsut" = { depends = [ (hsPkgs.base) (hsPkgs.hstox) ]; };
        "tox-spectest" = {
          depends = [ (hsPkgs.base) (hsPkgs.hstox) (hsPkgs.process) ];
          };
        };
      tests = {
        "testsuite" = {
          depends = [ (hsPkgs.base) (hsPkgs.async) (hsPkgs.hstox) ];
          };
        };
      };
    }