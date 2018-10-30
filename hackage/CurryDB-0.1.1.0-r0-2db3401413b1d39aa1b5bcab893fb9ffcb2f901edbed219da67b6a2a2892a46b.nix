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
      specVersion = "1.8";
      identifier = {
        name = "CurryDB";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "";
      url = "";
      synopsis = "CurryDB: In-memory Key/Value Database";
      description = "CurryDB: Simple, Persistent, Polymorphic, Transactional, In-memory Key/Value Database";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.conduit)
          (hsPkgs.time)
          (hsPkgs.stm)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-textual)
          (hsPkgs.network)
          (hsPkgs.network-conduit)
          (hsPkgs.data-default)
          (hsPkgs.monad-logger)
          (hsPkgs.fast-logger)
          (hsPkgs.template-haskell)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.async)
          (hsPkgs.binary)
          (hsPkgs.lifted-base)
          (hsPkgs.hashable)
          (hsPkgs.array)
        ];
      };
      exes = {
        "curry-memcached" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network-conduit)
            (hsPkgs.CurryDB)
          ];
        };
        "curry-redis" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network-conduit)
            (hsPkgs.system-filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.CurryDB)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.doctest)
          ];
        };
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.conduit)
            (hsPkgs.lifted-base)
            (hsPkgs.CurryDB)
          ];
        };
      };
      benchmarks = {
        "curry-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.mersenne-random-pure64)
            (hsPkgs.CurryDB)
          ];
        };
      };
    };
  }