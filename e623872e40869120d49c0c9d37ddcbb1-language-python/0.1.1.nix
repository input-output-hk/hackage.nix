{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "language-python";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2009 Bernard James Pope";
        maintainer = "bjpop@csse.unimelb.edu.au";
        author = "Bernard James Pope";
        homepage = "http://projects.haskell.org/language-python/";
        url = "";
        synopsis = "Parsing and pretty printing of Python code.";
        description = "language-python is a Haskell library for parsing and pretty printing\nPython code. Currently it only supports Python version 3.0.";
        buildType = "Simple";
      };
      components = {
        language-python = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.bytestring
            hsPkgs.array
          ];
        };
      };
    }