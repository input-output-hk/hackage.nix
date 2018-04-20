{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "flexible-defaults";
          version = "0.0.1.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/flexible-defaults";
        url = "";
        synopsis = "Generate default function implementations for complex type classes.";
        description = "Template Haskell code to implement default implementations\nfor type-class functions based on which functions are\nalready implemented.  Currently extremely crude but\nstill fairly effective.\n\nWhen defining a type class with many functions, each\nof which can be implemented based on arbitrary subsets\nof the others, the standard default-implementation\nconcept breaks down quite badly.  This library provides\na system by which more complex rules can be described\nfor choosing default implementations based on which\nones the user supplies.  These implementations can\nadditionally be given \\\"suitability scores\\\", so that\nwhen multiple possible choices could be made, the\nlibrary can choose the \\\"best\\\" one.";
        buildType = "Simple";
      };
      components = {
        flexible-defaults = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.th-extras
            hsPkgs.transformers
          ];
        };
      };
    }