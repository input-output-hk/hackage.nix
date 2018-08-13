{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "hspec-megaparsec";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mrkkrp/hspec-megaparsec";
      url = "";
      synopsis = "Utility functions for testing Megaparsec parsers with Hspec";
      description = "Utility functions for testing Megaparsec parsers with Hspec.";
      buildType = "Simple";
    };
    components = {
      "hspec-megaparsec" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hspec-expectations)
          (hsPkgs.megaparsec)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs.tagged)) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "tests" = {
          depends  = (([
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs.tagged)) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs.void)) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
        };
      };
    };
  }