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
        name = "cantor";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "klangner@gmail.com";
      author = "Krzysztof Langner";
      homepage = "https://github.com/klangner/cantor";
      url = "";
      synopsis = "Analiza Java source code";
      description = "Application for analyzing Java source code.\n\nCurrently implemented:\n\n* Finding project class paths.\n\n* Line Of Code metric.\n\nCheck <https://github.com/klangner/cantor/blob/master/doc/usage.md documentation> for usage patterns.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cantor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hxt)
            (hsPkgs.hxt-xpath)
            (hsPkgs.gtk)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.hxt)
            (hsPkgs.hxt-xpath)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }