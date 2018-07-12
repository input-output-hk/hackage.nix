{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pseudomacros";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<l.mai@web.de>";
        author = "Lukas Mai";
        homepage = "";
        url = "";
        synopsis = "cpp-style built-in macros using Template Haskell";
        description = "This package provides Template Haskell pseudo-constants describing the time\nand place of their use, similar to @__FILE__@, @__LINE__@, @__DATE__@, etc.\nin the C preprocessor.";
        buildType = "Simple";
      };
      components = {
        "pseudomacros" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.template-haskell
          ];
        };
      };
    }