{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "confsolve";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "daniel.trstenjak@gmail.com";
        author = "Daniel Trstenjak";
        homepage = "";
        url = "";
        synopsis = "A command line tool for resolving conflicts of file synchronizers.";
        description = "A command line tool for resolving conflicts of file synchronizers.";
        buildType = "Simple";
      };
      components = {
        exes = {
          confsolve = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.process
              hsPkgs.unordered-containers
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }