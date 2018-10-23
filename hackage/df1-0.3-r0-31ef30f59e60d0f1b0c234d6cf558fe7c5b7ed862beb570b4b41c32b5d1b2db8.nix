{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "df1";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2016-2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Type, render and parse the df1 hierarchical structured log format";
      description = "Type, render and parse logs in /df1/ format, a hierarchical structured\nlog format that is easy for humans and fast for computers.";
      buildType = "Simple";
    };
    components = {
      "df1" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.df1)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }