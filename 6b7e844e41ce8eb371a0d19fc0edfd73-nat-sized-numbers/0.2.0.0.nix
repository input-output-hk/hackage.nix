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
        name = "nat-sized-numbers";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2016 Donnacha Oisín Kidney";
      maintainer = "mail@doisinkidney.com";
      author = "Donnacha Oisín Kidney";
      homepage = "https://github.com/oisdk/nat-sized-numbers#readme";
      url = "";
      synopsis = "Variable-sized numbers from type-level nats.";
      description = "Variable-sized numbers from type-level nats.";
      buildType = "Simple";
    };
    components = {
      "nat-sized-numbers" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "nat-sized-numbers-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nat-sized-numbers)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }