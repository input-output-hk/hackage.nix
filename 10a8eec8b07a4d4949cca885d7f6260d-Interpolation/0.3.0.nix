{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Interpolation";
          version = "0.3.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "aleator@gmail.com";
        author = "Ville Tirronen";
        homepage = "";
        url = "";
        synopsis = "Multiline strings, interpolation and templating.";
        description = "This package adds quasiquoter for multiline\nstrings, interpolation and simple templating.\nIt can handle repetition templates which makes it\nHandy for outputting larger structures, such as\nlatex tables or gnuplot files.\n\n0.3.0 - Instead of Strings, the `str` quasiquoter produces\nvalues of type `(Monoid a, IsString a) => a`, making\nit compatible many other libraries, such as\n`Data.Text` and `Blaze.Builder`.\n\n0.2.6 - A handy quote for printing\n\n0.2.5.1 - version bump for ghc-7.0.1";
        buildType = "Simple";
      };
      components = {
        Interpolation = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.haskell-src-meta
            hsPkgs.template-haskell
          ];
        };
      };
    }