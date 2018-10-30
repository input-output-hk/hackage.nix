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
      specVersion = "1.2";
      identifier = {
        name = "CHXHtml";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "paul@fuzzpault.com";
      author = "Paul Talaga";
      homepage = "";
      url = "";
      synopsis = "A W3C compliant (X)HTML generating library";
      description = "An (X)Html generating library providing nearly full W3C compliance.  Non-compliant\ncontent is exposed at compile time and fails type-check.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }