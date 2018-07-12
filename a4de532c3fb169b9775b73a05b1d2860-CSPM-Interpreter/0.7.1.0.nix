{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "CSPM-Interpreter";
          version = "0.7.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
        author = "2010 - 2017 Marc Fontaine <Marc.Fontaine@gmx.de>";
        homepage = "";
        url = "";
        synopsis = "An interpreter for CSPM";
        description = "This package contains an interpreter for CSPM\nand instance declarations that implement the interface defined in\nthe package CSPM-CoreLanguage.\nThe operational semantics of core-CSP is defined in the CSPM-FiringRules package.";
        buildType = "Simple";
      };
      components = {
        "CSPM-Interpreter" = {
          depends  = [
            hsPkgs.CSPM-Frontend
            hsPkgs.CSPM-CoreLanguage
            hsPkgs.prettyclass
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.syb
          ];
        };
      };
    }