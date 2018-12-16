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
      specVersion = "0";
      identifier = {
        name = "Adaptive";
        version = "0.22";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Magnus Carlsson <magnus@galois.com>";
      author = "Magnus Carlsson";
      homepage = "";
      url = "";
      synopsis = "Library for incremental computing.";
      description = "This is a Haskell (plus some extensions) implementation\nof a library for incremental computing.  It closely\nfollows the implementation in the nice POPL 2002 paper\n\"Adaptive Functional Programming\", by Umut Acar,\nGuy Blelloch and Bob Harper.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
        ];
      };
      exes = {
        "spreadsheet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }