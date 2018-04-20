{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "doccheck";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) Mateusz Kowalczyk";
        maintainer = "Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
        author = "Mateusz Kowalczyk";
        homepage = "https://github.com/Fuuzetsu/doccheck";
        url = "";
        synopsis = "Checks Haddock comments for pitfalls and version changes.";
        description = "This tool aims to detect any common pitfalls that is often seen in documentation generated with Haddock,\ncommonly caused by lack of familiarity with the markup or time to review the generated documentation.\nExtending this tool is rather simple (add parsers) and can be easily used to judge the impact of\nchanging Haddock's parsing rules.";
        buildType = "Simple";
      };
      components = {
        exes = {
          doccheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.ghc-paths
              hsPkgs.directory
              hsPkgs.directory-tree
              hsPkgs.filepath
              hsPkgs.ghc
            ];
          };
        };
      };
    }