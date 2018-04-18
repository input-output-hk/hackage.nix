{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "urldecode";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Benedict Eastaugh";
        maintainer = "benedict@eastaugh.net";
        author = "Benedict Eastaugh";
        homepage = "https://github.com/beastaugh/urldecode";
        url = "";
        synopsis = "Decode percent-encoded strings.";
        description = "Pass a list of percent-encoded strings to the executable as\narguments and it will print the decoded versions, separated\nby newlines.";
        buildType = "Simple";
      };
      components = {
        exes = {
          urldecode = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
            ];
          };
        };
      };
    }