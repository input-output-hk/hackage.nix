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
      specVersion = "1.10";
      identifier = {
        name = "cue-sheet";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
      author = "Mark Karpov <markkarpov@openmailbox.org>";
      homepage = "https://github.com/mrkkrp/cue-sheet";
      url = "";
      synopsis = "Support for construction, rendering, and parsing of CUE sheets";
      description = "Support for construction, rendering, and parsing of CUE sheets.";
      buildType = "Simple";
    };
    components = {
      "cue-sheet" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.exceptions)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cue-sheet)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.text)
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
        };
      };
    };
  }