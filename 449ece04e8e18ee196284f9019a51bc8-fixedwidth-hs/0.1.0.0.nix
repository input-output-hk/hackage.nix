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
        name = "fixedwidth-hs";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael.o.church@gmail.com";
      author = "Michael O. Church";
      homepage = "https://github.com/michaelochurch/fixedwidth-hs";
      url = "";
      synopsis = "Quick parsing of fixed-width data formats.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "fixedwidth-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }