{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "historian";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "max.rabkin@gmail.com";
        author = "Max Rabkin";
        homepage = "";
        url = "";
        synopsis = "Extract the interesting bits from shell history";
        description = "Extract interesting commands and add them to a text file.\n\\\"Interesting\\\" means not matching any regular expression in the\nfile. This allows one to keep a textual database of commands.\nNever again say \\\"I wish I remembered what arguments to give\nwibble to make it flibber the gibbet\\\" three months after you\nlooked it up.\nWARNING: historian truncates ~/.bash_history.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "historian" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.regex-posix
              hsPkgs.regex-compat
              hsPkgs.containers
            ];
          };
        };
      };
    }