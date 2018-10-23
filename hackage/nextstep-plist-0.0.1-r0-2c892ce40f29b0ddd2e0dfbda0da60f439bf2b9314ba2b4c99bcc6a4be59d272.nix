{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "nextstep-plist";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jan Christiansen <info@monoid-it.de>";
      author = "Jan Christiansen";
      homepage = "";
      url = "";
      synopsis = "NextStep style plist parser and printer";
      description = "Parser and pretty printer for NextStep style\n(old style) plist (property list) files as\nthey are used for the project configuration files\nof Apple's Xcode.";
      buildType = "Simple";
    };
    components = {
      "nextstep-plist" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.pretty)
          (hsPkgs.parsec)
        ];
      };
    };
  }