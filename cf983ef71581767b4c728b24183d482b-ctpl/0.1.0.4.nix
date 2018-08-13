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
        name = "ctpl";
        version = "0.1.0.4";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "m@doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "http://doomanddarkness.eu/pub/ctpl";
      url = "";
      synopsis = "A programming language for text modification.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ctpl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.chatty-text)
          (hsPkgs.chatty-utils)
          (hsPkgs.array)
        ];
      };
      exes = {
        "ctpl0debug" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.chatty-text)
            (hsPkgs.chatty-utils)
            (hsPkgs.array)
          ];
        };
        "ctplc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.chatty-text)
            (hsPkgs.chatty-utils)
            (hsPkgs.array)
          ];
        };
      };
    };
  }