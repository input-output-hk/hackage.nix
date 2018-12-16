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
      specVersion = "2.0";
      identifier = {
        name = "enum-types";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/quickcheck-enum";
      url = "";
      synopsis = "small enum types";
      description = "This library provides small enumeration types intended to be\nused in test suites. This is most useful when used with a companion\npackage that provides orphan instances:\n\n* quickcheck-enum-instances\n\n* leancheck-enum-instances\n\nThe value these types provide is that they allow the user to\nbe selective about the number of inhabitants a tested type should\nhave.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }