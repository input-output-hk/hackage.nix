{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crunghc";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "aljee@hyper.cx";
        author = "Takano Akio";
        homepage = "";
        url = "";
        synopsis = "A runghc replacement with transparent caching";
        description = "crunghc is a program that acts like runghc. When it\nexecutes a Haskell script, it automatically stores a\ncompiled cache of the script to the disk, so that the\ncompilation overhead can be avoided in subsequent runs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "crunghc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.SHA
              hsPkgs.transformers
              hsPkgs.filelock
              hsPkgs.time
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }