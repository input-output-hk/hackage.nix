{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.1.0";
        identifier = {
          name = "lambda-ast";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Jonathan Fischoff";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "";
        url = "";
        synopsis = "Untyped Lambda Calculus Abstract Syntax Tree";
        description = "An AST for the untyped lambda calculus. The AST is parameterized by symbol type.";
        buildType = "Simple";
      };
      components = {
        "lambda-ast" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }