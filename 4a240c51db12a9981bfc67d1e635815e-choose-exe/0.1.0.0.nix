{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "choose-exe";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Chris Martin <ch.martin@gmail.com>";
        author = "Chris Martin <ch.martin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Command-line program to choose random element from a stream.";
        description = "A command-line program that reads lines from stdin and outputs some fixed number of them, selected uniformly at random.";
        buildType = "Simple";
      };
      components = {
        choose-exe = {
          depends  = [
            hsPkgs.base
            hsPkgs.choose
            hsPkgs.optparse-applicative
            hsPkgs.text
          ];
        };
        exes = {
          choose = {
            depends  = [
              hsPkgs.base
              hsPkgs.choose
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
        };
      };
    }