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
      specVersion = "1.6";
      identifier = {
        name = "ascii";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Michael Snoyman";
      homepage = "https://github.com/typeclasses/ascii";
      url = "";
      synopsis = "Type-safe, bytestring-based ASCII values.";
      description = "Type-safe, bytestring-based ASCII values.";
      buildType = "Simple";
    };
    components = {
      "ascii" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.hashable)
        ];
      };
    };
  }