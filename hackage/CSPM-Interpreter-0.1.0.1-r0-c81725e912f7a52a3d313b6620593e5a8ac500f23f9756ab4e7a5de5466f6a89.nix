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
      specVersion = "1.6";
      identifier = {
        name = "CSPM-Interpreter";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
      author = "2010 Marc Fontaine";
      homepage = "http://www.stups.uni-duesseldorf.de/~fontaine/csp";
      url = "";
      synopsis = "An interpreter for CSPM";
      description = "This module contains an interpreter for CSPM\nand instance declarations than implement the interface defined in\nthe package CSPM-CoreLanguage.\nAll type family instances that belong to this implementation\nare indexed with the phantom-type 'INT' ('INT' == interpreter).\nThe operational semantics of core-CSP is defined in a separate package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.CSPM-Frontend)
          (hsPkgs.CSPM-CoreLanguage)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.syb)
        ];
      };
      exes = {
        "cspmEval" = {
          depends  = [
            (hsPkgs.CSPM-Frontend)
            (hsPkgs.CSPM-CoreLanguage)
            (hsPkgs.base)
          ];
        };
      };
    };
  }