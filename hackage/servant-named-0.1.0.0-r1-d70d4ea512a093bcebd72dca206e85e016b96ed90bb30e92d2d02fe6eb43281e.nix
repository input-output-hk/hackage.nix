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
        name = "servant-named";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Ben Weitzman";
      maintainer = "benweitzman@gmail.com";
      author = "Ben WEitzman";
      homepage = "https://github.com/benweitzman/servant-named#readme";
      url = "";
      synopsis = "Add named endpoints to servant";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
        ];
      };
      tests = {
        "servant-named-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant-named)
            (hsPkgs.servant)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.servant-server)
          ];
        };
      };
    };
  }