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
      specVersion = "1.3";
      identifier = {
        name = "ieee-utils";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "Matt Morrow <mjm2002@gmail.com>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "ieee-utils";
      description = "IEEE 754 (Standard for Binary Floating-Point Arithmetic) Utilities.\nHaddock docs are at <http://code.haskell.org/~morrow/code/haskell/ieee-utils/haddock/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }