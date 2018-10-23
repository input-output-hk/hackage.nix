{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "anansi-hscolour";
        version = "0.1.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/anansi/";
      url = "";
      synopsis = "Colorized looms for Anansi";
      description = "";
      buildType = "Simple";
    };
    components = {
      "anansi-hscolour" = {
        depends  = [
          (hsPkgs.anansi)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hscolour)
          (hsPkgs.monads-tf)
          (hsPkgs.text)
        ];
      };
    };
  }