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
        name = "pcf-font";
        version = "0.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Michael Swan";
      maintainer = "mswan@fastmail.com";
      author = "Michael Swan";
      homepage = "https://github.com/michael-swan/pcf-font";
      url = "";
      synopsis = "PCF font parsing and rendering library.";
      description = "pcf-font is a library for parsing and rendering X11 PCF fonts.";
      buildType = "Simple";
    };
    components = {
      "pcf-font" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.zlib)
        ];
      };
    };
  }