{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ParserFunction";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ehaussecker@gmail.com";
        author = "Enzo Haussecker";
        homepage = "";
        url = "";
        synopsis = "Utilities for parsing and evaluating string-expressions.";
        description = "ParserFunction provides utilities for parsing and evaluating string-expressions.\nThe centerpiece of this module is a function called @evalStrExpr@,\nwhich evaluates a string-expression using a variable lookup map.\nExample: @evalStrExpr@ \\\"exp(x)\\\" [(\\'x\\',1)] gives 2.718281828459045.\nMore examples can be found by viewing the source code for this module.\nThis module also exports all supporting functionality.";
        buildType = "Simple";
      };
      components = {
        ParserFunction = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
      };
    }