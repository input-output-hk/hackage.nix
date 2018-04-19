{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "srcloc";
          version = "0.5.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2018 Geoffrey Mainland";
        maintainer = "Geoffrey Mainland <mainland@drexel.edu>";
        author = "Geoffrey Mainland <mainland@drexel.edu>";
        homepage = "https://github.com/mainland/srcloc";
        url = "";
        synopsis = "Data types for managing source code locations.";
        description = "Data types for tracking, combining, and printing source code locations.";
        buildType = "Simple";
      };
      components = {
        srcloc = {
          depends  = [ hsPkgs.base ];
        };
      };
    }