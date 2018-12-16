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
        name = "hdbc-aeson";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/hdbc-aeson";
      url = "";
      synopsis = "Deserialize from HDBC rows to FromJSON instances";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HDBC)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.convertible)
          (hsPkgs.unordered-containers)
          (hsPkgs.scientific)
          (hsPkgs.vector)
        ];
      };
    };
  }