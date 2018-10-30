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
        name = "do-notation-dsl";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Yang Bo";
      maintainer = "pop.atry@gmail.com";
      author = "Yang Bo";
      homepage = "https://github.com/Atry/dsl#readme";
      url = "";
      synopsis = "An alternative to monads";
      description = "Please see the README on GitHub at <https://github.com/Atry/dsl#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.do-notation-dsl)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }