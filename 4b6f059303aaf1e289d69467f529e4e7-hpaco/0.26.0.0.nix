{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hpaco";
          version = "0.26.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://bitbucket.org/tdammers/hpaco";
        url = "";
        synopsis = "Modular template compiler";
        description = "CLI front-end to the hpaco-lib library. Compiles Paco\ntemplate source code to JavaScript or PHP, or interprets\nit directly.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hpaco = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.cmdargs
              hsPkgs.hpaco-lib
              hsPkgs.strict
              hsPkgs.yaml
              hsPkgs.aeson
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }