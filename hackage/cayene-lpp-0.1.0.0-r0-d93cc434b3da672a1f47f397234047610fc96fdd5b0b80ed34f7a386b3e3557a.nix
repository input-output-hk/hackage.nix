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
        name = "cayene-lpp";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "https://github.com/sorki/cayene-lpp";
      url = "";
      synopsis = "Cayenne Low Power Payload";
      description = "Cayenne Low Power Payload format encoding and decoding";
      buildType = "Simple";
    };
    components = {
      "cayene-lpp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.timerep)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "cayene-lpp-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cayene-lpp)
            (hsPkgs.hspec)
            (hsPkgs.base16-bytestring)
          ];
        };
      };
    };
  }