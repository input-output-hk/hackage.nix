{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "adobe-swatch-exchange"; version = "0.2.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.binary)
          (hsPkgs.language-css)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          ];
        };
      exes = {
        "ase2css" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.language-css)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            ];
          };
        "ase2less" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            ];
          };
        };
      };
    }