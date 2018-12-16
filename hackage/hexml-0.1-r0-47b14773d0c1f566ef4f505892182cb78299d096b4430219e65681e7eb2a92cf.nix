{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "hexml";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2016";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/hexml#readme";
      url = "";
      synopsis = "XML subset DOM parser";
      description = "An XML DOM-style parser, that only parses a subset of XML, but is designed to be fast.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.extra)
        ];
      };
      tests = {
        "hexml-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hexml)
          ];
        };
      };
    };
  }