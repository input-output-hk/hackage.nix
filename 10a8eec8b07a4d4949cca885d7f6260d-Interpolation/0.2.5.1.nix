{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Interpolation";
          version = "0.2.5.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "aleator@gmail.com";
        author = "Ville Tirronen";
        homepage = "";
        url = "";
        synopsis = "Multiline strings, interpolation and templating.";
        description = "This package adds quasiquoter for multiline\nstrings, interpolation and simple templating.\nIt can handle repetition templates which makes it\nHandy for outputting larger structures, such as\nlatex tables or gnuplot files.\n0.2.5.1 -- version bump for ghc-7.0.1";
        buildType = "Simple";
      };
      components = {
        "Interpolation" = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.haskell-src-meta
            hsPkgs.template-haskell
          ];
        };
      };
    }