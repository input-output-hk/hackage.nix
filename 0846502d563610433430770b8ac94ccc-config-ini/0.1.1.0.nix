{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "config-ini";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "©2016 Getty Ritter";
        maintainer = "Getty Ritter <gettyritter@gmail.com>";
        author = "Getty Ritter <gettyritter@gmail.com>";
        homepage = "https://github.com/aisamanra/config-ini";
        url = "";
        synopsis = "A library for simple INI-based configuration files.";
        description = "The @config-ini@ library is a small monadic language\nfor writing simple configuration languages with convenient,\nhuman-readable error messages.\n\n> parseConfig :: IniParser (Text, Int, Bool)\n> parseConfig = section \"NETWORK\" \$ do\n>   user <- field        \"user\"\n>   port <- fieldOf      \"port\" number\n>   enc  <- fieldFlagDef \"encryption\" True\n>   return (user, port, enc)";
        buildType = "Simple";
      };
      components = {
        config-ini = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.megaparsec
          ];
        };
        exes = {
          basic-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.config-ini
            ];
          };
          config-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.config-ini
            ];
          };
        };
        tests = {
          test-ini-compat = {
            depends  = [
              hsPkgs.base
              hsPkgs.ini
              hsPkgs.config-ini
              hsPkgs.QuickCheck
              hsPkgs.unordered-containers
              hsPkgs.text
            ];
          };
          test-prewritten = {
            depends  = [
              hsPkgs.base
              hsPkgs.config-ini
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.directory
            ];
          };
        };
      };
    }