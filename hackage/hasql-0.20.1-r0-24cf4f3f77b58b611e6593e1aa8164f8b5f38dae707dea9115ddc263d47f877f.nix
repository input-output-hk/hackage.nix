{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql"; version = "0.20.1"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql";
      url = "";
      synopsis = "An efficient native PostgreSQL driver";
      description = "A highly efficient PostgreSQL driver and a flexible mapping API.\n\nThis is an experimental version, which implements the binary protocol natively.\n\nThis package is the root of the \\\"hasql\\\" ecosystem.\n\nThe API is completely disinfected from exceptions. All error-reporting is explicit and is presented using the 'Either' type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.stm)
          (hsPkgs.slave-thread)
          (hsPkgs.network)
          (hsPkgs.template-haskell)
          (hsPkgs.attoparsec)
          (hsPkgs.postgresql-binary)
          (hsPkgs.ptr)
          (hsPkgs.buffer)
          (hsPkgs.bytestring-strict-builder)
          (hsPkgs.vector-builder)
          (hsPkgs.deque)
          (hsPkgs.cryptonite)
          (hsPkgs.persistent-vector)
          (hsPkgs.dlist)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
          (hsPkgs.free)
          (hsPkgs.managed)
          (hsPkgs.foldl)
          (hsPkgs.semigroups)
          (hsPkgs.profunctors)
          (hsPkgs.contravariant)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.bug)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.foldl)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
            ];
          };
        "profiling" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.foldl)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.hasql)
            (hsPkgs.criterion)
            (hsPkgs.foldl)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
            ];
          };
        };
      };
    }