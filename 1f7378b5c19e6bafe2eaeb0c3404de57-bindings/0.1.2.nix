{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bindings";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "none";
        author = "Maurício C. Antunes";
        homepage = "";
        url = "";
        synopsis = "Deprecated package.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "bindings" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }