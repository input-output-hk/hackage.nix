{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lambda-options";
          version = "0.9.1.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "thomasedingcode@gmail.com";
        author = "Thomas Eding";
        homepage = "https://github.com/thomaseding/lambda-options";
        url = "";
        synopsis = "Declarative command line parser using type-driven pattern matching.";
        description = "Declarative command line parser using type-driven pattern matching.";
        buildType = "Simple";
      };
      components = {
        "lambda-options" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.read-bounded
          ];
        };
      };
    }