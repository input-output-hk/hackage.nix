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
        name = "adobe-swatch-exchange";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "https://github.com/stepcut/ase2css";
      url = "";
      synopsis = "parse Adobe Swatch Exchange files and (optionally) output .css files with the colors";
      description = "";
      buildType = "Simple";
    };
    components = {
      "adobe-swatch-exchange" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.binary)
          (hsPkgs.language-css)
        ];
      };
      exes = {
        "ase2css" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.language-css)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }