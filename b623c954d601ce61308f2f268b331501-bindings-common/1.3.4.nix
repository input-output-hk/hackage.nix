{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-common";
          version = "1.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "none";
        author = "Maurício C. Antunes";
        homepage = "";
        url = "";
        synopsis = "This package is obsolete. Look for bindings-DSL instead.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-common = {
          depends  = [ hsPkgs.base ];
        };
      };
    }