{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hstorchat";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 Christopher Reichert";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "";
      url = "";
      synopsis = "Distributed instant messaging over Tor";
      description = "A Distributed instant messaging application built on Tor Hidden Services.\nCompatible with the original TorChat client.";
      buildType = "Simple";
    };
    components = {
      "hstorchat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.socks)
          (hsPkgs.process)
          (hsPkgs.hsqml)
          (hsPkgs.safecopy)
          (hsPkgs.tagged)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.socks)
          (hsPkgs.random)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "hstorchat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.hstorchat)
            (hsPkgs.process)
            (hsPkgs.hsqml)
            (hsPkgs.text)
            (hsPkgs.containers)
          ];
        };
      };
      tests = {
        "hstorchat-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hstorchat)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }