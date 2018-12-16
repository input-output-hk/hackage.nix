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
        name = "logplex-parse";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "keith.duncan@github.com";
      author = "Keith Duncan";
      homepage = "https://github.com/keithduncan/logplex-parse";
      url = "";
      synopsis = "Parse Heroku application/logplex documents";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.iso8601-time)
          (hsPkgs.time)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logplex-parse)
            (hsPkgs.hspec)
            (hsPkgs.time)
          ];
        };
      };
    };
  }