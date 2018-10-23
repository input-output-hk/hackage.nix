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
        name = "flexible-time";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "t.t.mc1192.sf@gmail.com";
      author = "tattsun";
      homepage = "https://github.com/tattsun/flexible-time";
      url = "";
      synopsis = "Flexible time library.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "flexible-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.unix-time)
        ];
      };
    };
  }