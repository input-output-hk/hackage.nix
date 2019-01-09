{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimized = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "range-set-list"; version = "0.0.5"; };
      license = "MIT";
      copyright = "Copyright (c) 2013 Oleg Grenrus";
      maintainer = "oleg.grenrus@iki.fi";
      author = "Oleg Grenrus";
      homepage = "https://github.com/phadej/range-set-list";
      url = "";
      synopsis = "Memory efficient sets with continuous ranges of elements.";
      description = "Memory efficient sets with continuous ranges of elements. List based implementation. Interface mimics \"Data.Set\" interface where possible.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.range-set-list)
            ];
          };
        };
      };
    }