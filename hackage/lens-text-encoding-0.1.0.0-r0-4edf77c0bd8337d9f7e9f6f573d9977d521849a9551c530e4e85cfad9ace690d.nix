{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lens-text-encoding";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "http://github.com/iand675/text-lens-encoding";
      url = "";
      synopsis = "Isomorphisms and prisms for text <=> bytestring conversions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "lens-text-encoding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
        ];
      };
    };
  }