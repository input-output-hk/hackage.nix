{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HaTeX";
          version = "2.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Diaz <danieldiaz@asofilak.es>";
        author = "Daniel Diaz";
        homepage = "http://ddiaz.asofilak.es/packages/HaTeX";
        url = "";
        synopsis = "Monadic tool for write LaTeX files.";
        description = "See <http://www.haskell.org/haskellwiki/HaTeX> for a brief introduction.\nAlso included in Text.LaTeX module API documentation.\n\nMore information in /HaTeX, a monadic perspective of LaTeX/, available in the package homepage.\n\nAlso, if you have an example where you use HaTeX, you could send it to the same email. Thanks in advance.\n\nChanges from last version:\n\n* Modified some documentation.\n\n* Updated to some changes in dependencies.";
        buildType = "Simple";
      };
      components = {
        HaTeX = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.dstring
            hsPkgs.string-combinators
            hsPkgs.filepath
          ];
        };
      };
    }