{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "srcloc";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2015 Geoffrey Mainland";
        maintainer = "Geoffrey Mainland <mainland@cs.drexel.edu>";
        author = "Geoffrey Mainland <mainland@cs.drexel.edu>";
        homepage = "http://www.cs.drexel.edu/~mainland/";
        url = "";
        synopsis = "Data types for managing source code locations.";
        description = "Data types for managing source code locations.";
        buildType = "Simple";
      };
      components = {
        srcloc = {
          depends  = [ hsPkgs.base ];
        };
      };
    }