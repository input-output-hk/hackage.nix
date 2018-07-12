{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "git-checklist";
          version = "1.0.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "dougal@dougalstanton.net";
        author = "Dougal Stanton";
        homepage = "https://github.com/dougalstanton/git-checklist";
        url = "";
        synopsis = "Maintain per-branch checklists in Git";
        description = "Manage lists of TODO items for private branches\nfrom the command line. No configuration required\nand fast to learn, with human-editable storage\nformat and comprehensive help information.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "git-checklist" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.optparse-applicative
              hsPkgs.pretty
              hsPkgs.parsec
            ];
          };
        };
      };
    }