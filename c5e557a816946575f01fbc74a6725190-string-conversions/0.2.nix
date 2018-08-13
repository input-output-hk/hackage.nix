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
      specVersion = "1.8";
      identifier = {
        name = "string-conversions";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shahn@joyridelabs.de";
      author = "Sönke Hahn";
      homepage = "";
      url = "";
      synopsis = "Simplifies dealing with different types for strings";
      description = "Provides a simple type class for converting values\nof different string types\ninto values of other string types.";
      buildType = "Simple";
    };
    components = {
      "string-conversions" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }