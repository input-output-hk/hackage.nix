{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bit-array"; version = "0.1.2"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/bit-array";
      url = "";
      synopsis = "A bit array (aka bitset, bitmap, bit vector) API for numeric types";
      description = "The library extends the numeric types with an array-like interface\nover individual set bits.\nIt also provides an API for conversion to and\nfrom the binary notation.";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.numeric-qq) (hsPkgs.base) ]; };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.doctest)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.base)
            ];
          };
        };
      };
    }