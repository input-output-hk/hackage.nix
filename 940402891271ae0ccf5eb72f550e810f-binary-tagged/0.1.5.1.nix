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
        name = "binary-tagged";
        version = "0.1.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/binary-tagged#readme";
      url = "";
      synopsis = "Tagged binary serialisation.";
      description = "Check <https://github.com/phadej/binary-tagged#readme README on Github>";
      buildType = "Simple";
    };
    components = {
      "binary-tagged" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.base16-bytestring)
          (hsPkgs.generics-sop)
          (hsPkgs.hashable)
          (hsPkgs.scientific)
          (hsPkgs.SHA)
          (hsPkgs.tagged)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups)) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs.nats);
      };
      tests = {
        "binary-tagged-test" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.generics-sop)
            (hsPkgs.hashable)
            (hsPkgs.scientific)
            (hsPkgs.SHA)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.binary-tagged)
            (hsPkgs.binary-orphans)
            (hsPkgs.bifunctors)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups)) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs.nats);
        };
      };
      benchmarks = {
        "binary-tagged-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.generics-sop)
            (hsPkgs.hashable)
            (hsPkgs.nats)
            (hsPkgs.scientific)
            (hsPkgs.SHA)
            (hsPkgs.semigroups)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.binary-tagged)
            (hsPkgs.binary-orphans)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }