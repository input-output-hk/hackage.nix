{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hexdump";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Tim Newsham <newsham@lava.net>";
        author = "Tim Newsham";
        homepage = "";
        url = "";
        synopsis = "A library for forming hexdumps.";
        description = "A library for forming hexdumps.";
        buildType = "Simple";
      };
      components = {
        "hexdump" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }