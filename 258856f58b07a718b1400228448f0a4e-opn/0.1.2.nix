{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "opn";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "anders.claesson@gmail.com";
        author = "Anders Claesson";
        homepage = "http://github.com/akc/opn";
        url = "";
        synopsis = "Open files or URLs using associated programs.";
        description = "The `opn` command lets you open files and URLs with\nassociated programs. It's intended to \\\"just work\\\" and to\nbe trivial to configure. See the README at\n<https://github.com/akc/opn> for further info.";
        buildType = "Custom";
      };
      components = {
        exes = {
          "opn" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ini
              hsPkgs.text
              hsPkgs.process
              hsPkgs.unordered-containers
              hsPkgs.optparse-applicative
              hsPkgs.network-uri
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }