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
        name = "conlogger";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "t.t.mc1192.sf@gmail.com";
      author = "tattsun";
      homepage = "https://github.com/tattsun/conlogger";
      url = "";
      synopsis = "A logger for a concurrent program.";
      description = "A logger for a concurrent program.";
      buildType = "Simple";
    };
    components = {
      "conlogger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conlogger)
            (hsPkgs.text)
          ];
        };
      };
    };
  }