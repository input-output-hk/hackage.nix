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
        name = "zabt";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson <me@jspha.com>";
      homepage = "https://github.com/tel/zabt#readme";
      url = "";
      synopsis = "Simpleminded abstract binding trees";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "zabt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "zabt-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.zabt)
          ];
        };
      };
    };
  }