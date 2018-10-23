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
        name = "proctest";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2012 Niklas Hambüchen";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen";
      homepage = "https://github.com/nh2/proctest";
      url = "";
      synopsis = "An IO library for testing interactive command line programs";
      description = "An IO library for testing interactive command line programs\n\nProctest aims to simplify interacting with and testing\nterminal programs, providing convenience functions\nfor starting programs and reading their output.\n\nAll blocking operations support timeouts so that misbehaving\nprograms cannot block your test pipeline.\n\nFind more examples and contribute at\n<https://github.com/nh2/proctest>.";
      buildType = "Simple";
    };
    components = {
      "proctest" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      exes = {
        "example-netcat-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.smartcheck)
          ];
        };
      };
    };
  }