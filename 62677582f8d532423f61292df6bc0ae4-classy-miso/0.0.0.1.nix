{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "classy-miso";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Robert Fischer";
        maintainer = "smokejumperit+stack@gmail.com";
        author = "Robert Fischer";
        homepage = "https://github.com/RobertFischer/Classy-Miso#README.md";
        url = "";
        synopsis = "Typeclass based support for Miso, the Tasty Web Framework for Haskell.";
        description = "Please see the README on Github at <https://github.com/RobertFischer/Classy-Miso#README.md>";
        buildType = "Simple";
      };
      components = {
        "classy-miso" = {
          depends  = [
            hsPkgs.base
            hsPkgs.miso
            hsPkgs.rfc
            hsPkgs.megaparsec
            hsPkgs.lens
            hsPkgs.network-uri
            hsPkgs.containers
            hsPkgs.url
          ] ++ pkgs.lib.optionals (compiler.isGhcjs && true) [
            hsPkgs.aeson
            hsPkgs.bifunctors
          ];
        };
        exes = {
          "classy-miso-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.classy-miso
              hsPkgs.miso
              hsPkgs.rfc
            ];
          };
        };
        tests = {
          "ghcjs-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.classy-miso
              hsPkgs.miso
              hsPkgs.rfc
            ];
          };
        };
      };
    }