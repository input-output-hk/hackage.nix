{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "language-python-colour";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Bernard James Pope";
        maintainer = "bjpop@csse.unimelb.edu.au";
        author = "Bernard James Pope";
        homepage = "http://www.cs.mu.oz.au/~bjpop/";
        url = "";
        synopsis = "Generate coloured XHTML for Python code.";
        description = "Generate coloured XHTML for Python code.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pycol" = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.language-python
              hsPkgs.xhtml
            ];
          };
        };
      };
    }