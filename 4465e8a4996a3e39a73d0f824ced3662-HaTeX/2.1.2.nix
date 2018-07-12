{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HaTeX";
          version = "2.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "danieldiaz@asofilak.es";
        author = "Daniel Diaz";
        homepage = "http://ddiaz.asofilak.es/packages/HaTeX";
        url = "";
        synopsis = "Monadic tool for write LaTeX files.";
        description = "See <http://www.haskell.org/haskellwiki/HaTeX> for a brief introduction.\nAlso included in Text.LaTeX module API documentation.\n\nMore information in /HaTeX, a monadic perspective of LaTeX/, available in the package homepage.\n\nReport any bug or suggestion to the author:\n\ndanieldiaz\\@asofilak.es\n\nAlso, if you have an example where you use HaTeX, you could send it to the same email. Thanks in advance.\n\nChanges from last version:\n\n* Fixed a bug in @lnbk@ and @lnbk_@ functions. They need no more adding an extra space after their use.\n\n* Modified some documentation.\n\n* Added some documentation.\n\n* Removed an unnecesary import from Text.LaTeX.Result.";
        buildType = "Simple";
      };
      components = {
        "HaTeX" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.dstring
            hsPkgs.to-string-class
            hsPkgs.string-combinators
            hsPkgs.filepath
          ];
        };
      };
    }