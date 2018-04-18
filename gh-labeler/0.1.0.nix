{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gh-labeler";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Vincent Hanquez";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez";
        homepage = "https://github.com/vincenthz/gh-labeler#readme";
        url = "";
        synopsis = "Github Standard Labeler";
        description = "Please see the README on Github at <https://github.com/vincenthz/gh-labeler#readme>";
        buildType = "Simple";
      };
      components = {
        exes = {
          gh-labeler = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.github
              hsPkgs.memory
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
      };
    }