{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "funcons-lambda-cbv-mp";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ltvanbinsbergen@acm.org";
        author = "L. Thomas van Binsbergen";
        homepage = "";
        url = "";
        synopsis = "Basic call-by-value lambda-calculus with operational semantics based on Funcons";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          lambda-cbv = {
            depends  = [
              hsPkgs.base
              hsPkgs.gll
              hsPkgs.funcons-tools
              hsPkgs.containers
              hsPkgs.text
            ];
          };
        };
      };
    }