{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "epanet-haskell";
          version = "2.0.12.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Sibi <sibi@psibi.in>";
        author = "Steffen Macke";
        homepage = "https://epanet.de/developer/haskell.html";
        url = "";
        synopsis = "Haskell binding for EPANET";
        description = "Hydraulic Analysis package for water supply networks";
        buildType = "Simple";
      };
      components = {
        epanet-haskell = {
          depends  = [ hsPkgs.base ];
        };
      };
    }