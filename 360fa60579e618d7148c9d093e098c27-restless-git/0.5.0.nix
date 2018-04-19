{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "restless-git";
          version = "0.5.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "mikael@brockman.se";
        author = "Mikael Brockman";
        homepage = "https://github.com/lessrest/restless-git";
        url = "";
        synopsis = "Easy Git repository serialization";
        description = "This package defines a simple way to serialize state as a nested file\nhierarchy saved in a Git repository.\nIt is still quite inflexible, and rather slow because it repeatedly\ninvokes Git's plumbing commands.\nIt used to be implemented with libgit2, but I found it desirable to\navoid FFI.\nAny way to make it faster without FFI would be great.";
        buildType = "Simple";
      };
      components = {
        restless-git = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.time
            hsPkgs.HSH
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.restless-git
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.temporary
              hsPkgs.text
            ];
          };
        };
      };
    }