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
      specVersion = "1.10";
      identifier = {
        name = "text-conversions";
        version = "0.2.0";
      };
      license = "ISC";
      copyright = "";
      maintainer = "lexi.lambda@gmail.com";
      author = "Alexis King";
      homepage = "https://github.com/cjdev/text-conversions#readme";
      url = "";
      synopsis = "Safe conversions between textual types";
      description = "Safe conversions between textual types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.errors)
          (hsPkgs.text)
        ];
      };
      tests = {
        "text-conversions-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text-conversions)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.text)
          ];
        };
      };
    };
  }