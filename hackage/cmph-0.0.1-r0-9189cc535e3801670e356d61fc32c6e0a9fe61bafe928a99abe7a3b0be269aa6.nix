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
        name = "cmph";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Mark Wotton <mwotton@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "low level interface to CMPH";
      description = "a binding to the C-based CMPH library (http://cmph.sf.net).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
        libs = [ (pkgs."cmph") ];
      };
      tests = {
        "cmph-test" = {
          depends = [
            (hsPkgs.cmph)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.semigroups)
            (hsPkgs.text)
          ];
          libs = [ (pkgs."cmph") ];
        };
      };
    };
  }