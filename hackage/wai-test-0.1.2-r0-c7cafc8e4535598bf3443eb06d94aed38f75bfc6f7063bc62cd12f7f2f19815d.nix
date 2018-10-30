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
      specVersion = "1.6";
      identifier = {
        name = "wai-test";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/wai";
      url = "";
      synopsis = "Unit test framework (built on HUnit) for WAI applications.";
      description = "Unit test framework (built on HUnit) for WAI applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.enumerator)
          (hsPkgs.cookie)
          (hsPkgs.blaze-builder-enumerator)
          (hsPkgs.HUnit)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
        ];
      };
    };
  }