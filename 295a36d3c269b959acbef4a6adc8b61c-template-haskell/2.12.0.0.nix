{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "template-haskell";
          version = "2.12.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Support library for Template Haskell";
        description = "This package provides modules containing facilities for manipulating\nHaskell source code using Template Haskell.\n\nSee <http://www.haskell.org/haskellwiki/Template_Haskell> for more\ninformation.";
        buildType = "Simple";
      };
      components = {
        template-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-boot-th
            hsPkgs.pretty
          ];
        };
      };
    }