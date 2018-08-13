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
      specVersion = "0";
      identifier = {
        name = "BitSyntax";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley";
      homepage = "http://www.imperialviolet.org/bitsyntax";
      url = "";
      synopsis = "A module to aid in the (de)serialisation of binary data";
      description = "";
      buildType = "Custom";
    };
    components = {
      "BitSyntax" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }