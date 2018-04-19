{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "buffer-pipe";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "";
        url = "";
        synopsis = "Read from stdin and write to stdout in large blocks";
        description = "Read from stdin and write to stdout in large blocks.\nThis can be inserted in a chain of piping commands.\nE.g. if inserted after @tar c@ or before @tar x@\nyou can reduce jumping forth and back on the hard disk.\n\nYou may also try the @buffer@ command\nfrom the Debian package of the same name.";
        buildType = "Simple";
      };
      components = {
        exes = {
          buffer-pipe = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }