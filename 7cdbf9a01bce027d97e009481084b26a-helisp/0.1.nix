{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "helisp";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Jason Dagit <dagit@codersbase.com>";
        homepage = "http://www.codersbase.com/index.php/Helisp";
        url = "";
        synopsis = "An incomplete Elisp compiler";
        description = "This is an incomplete compiler for Emacs Lisp;\nthe source might be of interest to others.\n\nThe Darcs repository can be found at\n<http://projects.codersbase.com/repos/helisp>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          helisp = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.parsec
            ];
          };
        };
      };
    }