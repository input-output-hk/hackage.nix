{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ghci-pretty";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014 Lars Kuhtz <lakuhtz@gmail.com>";
        maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
        author = "Lars Kuhtz";
        homepage = "https://github.com/larskuhtz/ghci-pretty";
        url = "";
        synopsis = "colored pretty-printing within ghci";
        description = "A tiny package that combines the ipprint package and\nthe hscolour package to provide colored pretty-printing\nin ghci.\n\n/Usage/\n\nAdd the following lines to your @ghci.conf@ file:\n\n> -- Pretty printing of it\n> import IPPrint.Colored\n> :set -interactive-print=IPPrint.Colored.cpprint\n> :def cp (\\_ -> return \":set -interactive-print=IPPrint.Colored.cpprint\")\n> :def ncp (\\_ -> return \":set -interactive-print=print\")\n\nNow you can enable colored pretty-printing in ghci with the commmand\n\n> :cp\n\nThe following command turns colored pretty-printing off again\n\n> :ncp";
        buildType = "Simple";
      };
      components = {
        "ghci-pretty" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ipprint
            hsPkgs.hscolour
          ];
        };
      };
    }