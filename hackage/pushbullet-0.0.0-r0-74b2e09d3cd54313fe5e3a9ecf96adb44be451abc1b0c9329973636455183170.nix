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
        name = "pushbullet";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kevin Cotrone <kevincotrone@gmail.com>";
      author = "Kevin Cotrone <kevincotrone@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Simple push support for pushbullet";
      description = "Pushbullet support for sending simple push notifications through pushbullet";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.wreq)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }