{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "http-types";
        version = "0.6.4";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2011 Aristid Breitkreuz";
      maintainer = "aristidb@googlemail.com";
      author = "Aristid Breitkreuz, Michael Snoyman";
      homepage = "https://github.com/aristidb/http-types";
      url = "";
      synopsis = "Generic HTTP types for Haskell (for both client and server code).";
      description = "Generic HTTP types for Haskell (for both client and server code).";
      buildType = "Simple";
    };
    components = {
      "http-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.case-insensitive)
          (hsPkgs.blaze-builder)
          (hsPkgs.text)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.ascii)
            (hsPkgs.array)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }