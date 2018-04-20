{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "converge";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "/dev/null";
        url = "";
        synopsis = "Limit operations for converging sequences";
        description = "Limit operations for converging sequences.  This is\nfairly simple right now.";
        buildType = "Simple";
      };
      components = {
        converge = {
          depends  = [ hsPkgs.base ];
        };
      };
    }