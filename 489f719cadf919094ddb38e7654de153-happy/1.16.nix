{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "happy";
          version = "1.16";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Andy Gill, Simon Marlow";
        maintainer = "Simon Marlow <simonmar@microsoft.com>";
        author = "Andy Gill and Simon Marlow";
        homepage = "http://www.haskell.org/happy/";
        url = "";
        synopsis = "Happy is a parser generator for Haskell";
        description = "";
        buildType = "Custom";
      };
      components = {
        exes = {
          happy = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
            ];
          };
        };
      };
    }