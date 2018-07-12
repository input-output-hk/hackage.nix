{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-constraints";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ben.armston@googlemail.com";
        author = "Ben Armston";
        homepage = "https://github.com/benarmston/cabal-constraints";
        url = "";
        synopsis = "Repeatable builds for cabalized Haskell projects.";
        description = "/Repeatable builds for cabalized Haskell projects/\n\n\\'cabal-constraints\\' provides repeatable builds for cabalized Haskell\nprojects by \\\"freezing\\\" the exact versions of the dependencies selected by\n\\'cabal-install\\'. All build environments for the project, such as the test\nor staging build environments, or other developers collaborating on the\nproject, will then use the same dependency versions.\n\nIt is designed to be used alongside \\'cabal-install\\' sandboxes, in which\ncase isolated, repeatable builds can be achieved.\n\n/Using cabal-constraints/\n\n\\'cabal-constraints\\' should be run from the root directory of a cabalized\nHaskell project and given the path to the `setup-config` file to use. It will\nprint out all dependencies of the project in a format suitable for use in a\n`cabal-install` config file. For example, running \\'cabal-constraints\\'\nagainst itself produces the following:\n\n@\n\$ cabal-constraints dist\\/dist-sandbox-500003c6\\/setup-config\nconstraints: Cabal == 1.19.0\n, array == 0.4.0.1\n, base == 4.6.0.1\n, bytestring == 0.10.0.2\n, containers == 0.5.0.0\n, deepseq == 1.3.0.1\n, directory == 1.2.0.1\n, filepath == 1.3.0.1\n, ghc-prim == 0.3.0.0\n, integer-gmp == 0.5.0.0\n, old-locale == 1.0.0.5\n, pretty == 1.1.1.0\n, process == 1.1.0.2\n, rts == 1.0\n, time == 1.4.0.1\n, unix == 2.6.0.1\n@\n\nA single mandatory argument must be provided which is the path to the\n@setup-config@ file to use. The file will be located under the @dist@\ndirectory. Usually there will be a single @setup-config@ file which can be\nfound by running @find dist -name setup-config@ from the root directory of the\nproject.  If your project has more than one such file, it is likely because\nyou have built it either with and without sandboxes or with multiple\nsandboxes.  You probably want the most recently modified file which can be\nfound with @ls -tr \$( find dist -name setup-config ) | tail -n1@.\n\nTo use these constraints for reproducible builds, one should make use of the\nnew sandbox feature of @cabal-install@ 1.18. The constraints can be redirected\nto @cabal.config@ and committed to your code repository.  When the project is\nbuilt, the same set of dependency versions will be resolved by @cabal-install@\nensuring repeatable builds.\n\nIf @cabal.config@ contains no other information the simplest solution is to\noverwrite it:\n\n@\n\$ cabal-constraints > cabal.config\n@\n\nIf @cabal.config@ contains information that needs to be preserved, the\nfollowing will replace the @constraints@ section and everything following it\nwith the new constraints. If you ensure that the @constraints@ section is the\nlast section of the file, all other information in it will be kept.\n\n@\n\$ sed -i \\/^constraints:\\/,\$d cabal.config && cabal-constraints >> cabal.config\n@";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabal-constraints" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }