{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "binary-tagged"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/binary-tagged#readme";
      url = "";
      synopsis = "Tagged binary serialisation.";
      description = "Structurally tag binary serialisation stream.\n\nSay you have:\n\n@\ndata Record = Record\n\\  { _recordFields  :: HM.HashMap Text (Integer, ByteString)\n\\  , _recordEnabled :: Bool\n\\  }\n\\  deriving (Eq, Show, Generic)\n\ninstance Binary Record\ninstance HasStructuralInfo Record\ninstance HasSemanticVersion Record\n@\n\nthen you can serialise and deserialise @Record@ values with a structure tag by simply\n\n@\nencodeTaggedFile \"cachefile\" record\ndecodeTaggedFile \"cachefile\" :: IO Record\n@\n\nIf structure of @Record@ changes in between, deserialisation will fail early.\n\nThe overhead is next to non-observable, see [a simple benchmark](https://github.com/phadej/binary-tagged/blob/master/bench/Bench.hs).\n\n@\nbenchmarking encode/Binary\ntime                 362.6 μs   (361.2 μs .. 363.8 μs)\n\nbenchmarking encode/Tagged\ntime                 379.2 μs   (375.5 μs .. 382.2 μs)\n\nbenchmarking decode/Binary\ntime                 366.3 μs   (365.1 μs .. 368.1 μs)\n\nbenchmarking decode/Tagged\ntime                 367.6 μs   (367.0 μs .. 368.2 μs)\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.base16-bytestring)
          (hsPkgs.cryptohash-sha1)
          (hsPkgs.generics-sop)
          (hsPkgs.hashable)
          (hsPkgs.scientific)
          (hsPkgs.tagged)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs.nats);
        };
      tests = {
        "binary-tagged-test" = {
          depends = ([
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.binary)
            (hsPkgs.binary-instances)
            (hsPkgs.binary-tagged)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.generics-sop)
            (hsPkgs.hashable)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.scientific)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs.nats);
          };
        };
      benchmarks = {
        "binary-tagged-bench" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.binary-instances)
            (hsPkgs.binary-tagged)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.generics-sop)
            (hsPkgs.hashable)
            (hsPkgs.nats)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.SHA)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }