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
        name = "threads-supervisor";
        version = "1.0.2.0";
      };
      license = "MIT";
      copyright = "Alfredo Di Napoli";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "Simple, IO-based library for Erlang-style thread supervision";
      description = "Simple, IO-based library for Erlang-style thread supervision";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.stm)
          (hsPkgs.time)
        ];
      };
      tests = {
        "threads-supervisor-tests" = {
          depends  = [
            (hsPkgs.threads-supervisor)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.time)
            (hsPkgs.stm)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }