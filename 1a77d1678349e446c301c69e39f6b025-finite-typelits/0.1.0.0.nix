{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "finite-typelits";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mniip@mniip.com";
        author = "mniip";
        homepage = "https://github.com/mniip/finite-typelits";
        url = "";
        synopsis = "A type inhabited by finitely many values, indexed by type-level naturals.";
        description = "A type inhabited by finitely many values, indexed by type-level naturals.";
        buildType = "Simple";
      };
      components = {
        "finite-typelits" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }