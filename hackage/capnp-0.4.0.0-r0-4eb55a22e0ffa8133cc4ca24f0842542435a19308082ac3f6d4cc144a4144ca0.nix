{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "capnp"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "2016-2018 haskell-capnp contributors (see CONTRIBUTORS file).";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://github.com/zenhack/haskell-capnp";
      url = "";
      synopsis = "Cap'n Proto for Haskell";
      description = "A native Haskell implementation of the Cap'N Proto cerialization format and\nRPC protocol.\n\nThe library implements serialization and level 1 RPC.\n\nThe \"Capnp.Tutorial\" module is the best place to start reading; the\nreference documentation can seem bewildering without that context.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytes)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.reinterpret-cast)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.cpu)
          (hsPkgs.hashable)
          (hsPkgs.data-default-instances-vector)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
          (hsPkgs.list-t)
          (hsPkgs.focus)
          (hsPkgs.async)
          (hsPkgs.network-simple)
          (hsPkgs.network)
          (hsPkgs.supervisors)
          (hsPkgs.pretty-show)
          ];
        };
      exes = {
        "capnpc-haskell" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytes)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.reinterpret-cast)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.capnp)
            (hsPkgs.wl-pprint-text)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytes)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.reinterpret-cast)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.capnp)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.process)
            (hsPkgs.process-extras)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-io)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.hspec)
            (hsPkgs.directory)
            (hsPkgs.resourcet)
            (hsPkgs.heredoc)
            (hsPkgs.deepseq)
            (hsPkgs.pretty-show)
            (hsPkgs.supervisors)
            ];
          };
        };
      };
    }