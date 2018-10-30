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
        name = "graflog";
        version = "2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Michael A. Arnold";
      maintainer = "marnold@cj.com";
      author = "Michael Adlai Arnold";
      homepage = "https://github.com/m-arnold/graflog#readme";
      url = "";
      synopsis = "Monadic correlated log events";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text-conversions)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "graflog-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.graflog)
            (hsPkgs.test-fixture)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.aeson)
          ];
        };
      };
    };
  }