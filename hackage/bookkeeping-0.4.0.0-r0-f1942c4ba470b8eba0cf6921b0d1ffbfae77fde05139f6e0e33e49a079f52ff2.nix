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
        name = "bookkeeping";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "2017 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/haskell-bookkeeping#readme";
      url = "";
      synopsis = "A module for bookkeeping by double entry.";
      description = "A module for bookkeeping by double entry. This module provides a way to do bookkeeping programmatically.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mono-traversable)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transaction)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "bookkeeping-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bookkeeping)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.doctest)
            (hsPkgs.bookkeeping)
          ];
        };
      };
    };
  }