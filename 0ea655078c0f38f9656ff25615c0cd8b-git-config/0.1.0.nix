{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "git-config";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Fernando Freire";
        maintainer = "dogonthehorizon@gmail.com";
        author = "Fernando Freire";
        homepage = "https://github.com/dogonthehorizon/git-config#readme";
        url = "";
        synopsis = "A simple parser for Git configuration files.";
        description = "git-config is a simple 'megaparsec' parser for Git configuration files.\n\nIt aims to provide the simplest API possible for parsing Git configuration\nfiles so that you can get to whatever it was you were doing.\n\nA sample of this library in use:\n\n> import qualified Data.Text.IO as TIO\n> import Text.GitConfig.Parser (parseConfig)\n>\n> main :: IO ()\n> main = do\n>   file <- TIO.readFile \".git/config\"\n>   case parseConfig file of\n>     Right conf ->\n>       print conf";
        buildType = "Simple";
      };
      components = {
        git-config = {
          depends  = [
            hsPkgs.base
            hsPkgs.megaparsec
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          git-config-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.git-config
              hsPkgs.megaparsec
              hsPkgs.smallcheck
              hsPkgs.smallcheck-series
              hsPkgs.tasty
              hsPkgs.tasty-discover
              hsPkgs.tasty-hunit
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-travis
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }