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
        name = "CSPM-Interpreter";
        version = "0.6.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "2010 - 2013 Marc Fontaine";
      homepage = "";
      url = "";
      synopsis = "An interpreter for CSPM";
      description = "This package contains an interpreter for CSPM\nand instance declarations that implement the interface defined in\nthe package CSPM-CoreLanguage.\nAll type family instances that belong to this implementation\nare indexed with the phantom-type 'INT' ('INT' == interpreter).\nThe operational semantics of core-CSP is defined in the CSPM-FiringRules package.";
      buildType = "Simple";
    };
    components = {
      "CSPM-Interpreter" = {
        depends  = [
          (hsPkgs.CSPM-Frontend)
          (hsPkgs.CSPM-CoreLanguage)
          (hsPkgs.prettyclass)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.syb)
        ];
      };
    };
  }