{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      extra = false;
      cli = false;
      yaml = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "etc";
          version = "0.3.1.0";
        };
        license = "MIT";
        copyright = "2017, 2018 Roman Gonzalez";
        maintainer = "open-source@roman-gonzalez.info";
        author = "Roman Gonzalez";
        homepage = "https://github.com/roman/Haskell-etc";
        url = "";
        synopsis = "Declarative configuration spec for Haskell projects";
        description = "`etc` gathers configuration values from multiple sources (cli options, OS\nenvironment variables, files) using a declarative spec file that defines where\nthese values are to be found and located in a configuration map.";
        buildType = "Simple";
      };
      components = {
        etc = {
          depends  = (([
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.hashable
            hsPkgs.rio
            hsPkgs.text
            hsPkgs.typed-process
            hsPkgs.unliftio
          ] ++ optionals _flags.extra [
            hsPkgs.ansi-wl-pprint
            hsPkgs.edit-distance
          ]) ++ pkgs.lib.optional _flags.cli hsPkgs.optparse-applicative) ++ pkgs.lib.optional _flags.yaml hsPkgs.yaml;
        };
        tests = {
          etc-testsuite = {
            depends  = (([
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.rio
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.etc
            ] ++ pkgs.lib.optional _flags.cli hsPkgs.optparse-applicative) ++ pkgs.lib.optional _flags.yaml hsPkgs.yaml) ++ pkgs.lib.optional _flags.extra hsPkgs.edit-distance;
          };
        };
      };
    }