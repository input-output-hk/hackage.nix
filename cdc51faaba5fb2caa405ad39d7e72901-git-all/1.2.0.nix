{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "git-all";
          version = "1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "John Wiegley <johnw@newartisans.com>";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/git-all";
        url = "";
        synopsis = "Determine which Git repositories need actions to be taken";
        description = "A utility for determining which Git repositories need actions to be\ntaken within them.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "git-all" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shelly
              hsPkgs.cmdargs
              hsPkgs.hslogger
              hsPkgs.regex-posix
              hsPkgs.system-filepath
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.parallel-io
              hsPkgs.unix
              hsPkgs.system-fileio
            ];
          };
        };
      };
    }