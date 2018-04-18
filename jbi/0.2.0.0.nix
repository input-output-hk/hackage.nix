{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jbi";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Just Build It - a \"do what I mean\" abstraction for Haskell build tools";
        description = "If you work with multiple Haskell projects, it can be annoying have to\nchange gears mentally as to which set of tooling you have to work with\nfor each one (configuring your editor, or even just the command-line).\n\n@jbi@ aims to provide a common interface to the various Haskell build\ntools available and automatically determine which one you should use,\nso you can get back to hacking on your code, rather than on your\nenvironment.";
        buildType = "Simple";
      };
      components = {
        jbi = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.Cabal
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.monad-parallel
            hsPkgs.process
            hsPkgs.tagged
          ];
        };
        exes = {
          jbi = {
            depends  = [
              hsPkgs.jbi
              hsPkgs.base
              hsPkgs.aeson-pretty
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
        };
      };
    }