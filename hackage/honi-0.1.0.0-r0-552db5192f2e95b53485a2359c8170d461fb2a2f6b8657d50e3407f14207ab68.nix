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
      specVersion = "1.8";
      identifier = {
        name = "honi";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Patrick Chilton, Niklas Hambüchen";
      maintainer = "Patrick Chilton <chpatrick@gmail.com>, Niklas Hambüchen <niklas@nh2.me>";
      author = "Patrick Chilton, Niklas Hambüchen";
      homepage = "";
      url = "";
      synopsis = "OpenNI 2 binding";
      description = "OpenNI 2 binding";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
        libs = [
          (pkgs."OpenNI2")
          (pkgs."freenect")
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.honi)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
          libs = [
            (pkgs."OpenNI2")
            (pkgs."freenect")
          ];
        };
      };
    };
  }