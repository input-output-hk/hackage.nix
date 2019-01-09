{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "capnp"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2016-2018 haskell-capnp contributors (see CONTRIBUTORS file).";
      maintainer = "ian@zenhack.net";
      author = "Ian Denhardt";
      homepage = "https://github.com/zenhack/haskell-capnp";
      url = "";
      synopsis = "Cap'n Proto for Haskell";
      description = "A native Haskell implementation of the Cap'N Proto cerialization format.\n\nThis library is currently serialization-only. RPC support is planned but not\nyet implemented. It works, but bear in mind that the API is considered\nunstable, and is likely to change to accomodate RPC, facilitate improved\nperformance, etc.\n\nThe \"Data.Capnp.Tutorial\" module is the best place to start reading; the\nreference documentation can seem bewildering without that context.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytes)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.reinterpret-cast)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.cpu)
          (hsPkgs.data-default)
          (hsPkgs.data-default-instances-vector)
          ];
        };
      exes = {
        "capnpc-haskell" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytes)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.reinterpret-cast)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.capnp)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.filepath)
            (hsPkgs.utf8-string)
            (hsPkgs.wl-pprint-text)
            ];
          };
        };
      tests = {
        "simple-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytes)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.reinterpret-cast)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.capnp)
            (hsPkgs.data-default)
            (hsPkgs.process)
            (hsPkgs.process-extras)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-io)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.binary)
            (hsPkgs.directory)
            (hsPkgs.resourcet)
            (hsPkgs.heredoc)
            (hsPkgs.deepseq)
            (hsPkgs.pretty-show)
            ];
          };
        };
      };
    }