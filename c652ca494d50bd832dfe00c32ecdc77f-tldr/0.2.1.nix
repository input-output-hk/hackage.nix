{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tldr";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Sibi";
        maintainer = "sibi@psibi.in";
        author = "Sibi";
        homepage = "https://github.com/psibi/tldr-hs#readme";
        url = "";
        synopsis = "Haskell tldr client";
        description = "Haskell tldr client with support for updating and viewing tldr pages.";
        buildType = "Simple";
      };
      components = {
        tldr = {
          depends  = [
            hsPkgs.base
            hsPkgs.cmark
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.ansi-terminal
          ];
        };
        exes = {
          tldr = {
            depends  = [
              hsPkgs.base
              hsPkgs.tldr
              hsPkgs.optparse-applicative
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.shell-conduit
              hsPkgs.semigroups
            ];
          };
        };
        tests = {
          tldr-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tldr
            ];
          };
        };
      };
    }