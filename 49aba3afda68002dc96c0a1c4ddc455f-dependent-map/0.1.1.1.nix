{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dependent-map";
          version = "0.1.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/dependent-map";
        url = "";
        synopsis = "Dependent finite maps (partial dependent products)";
        description = "Dependent finite maps (partial dependent products)";
        buildType = "Simple";
      };
      components = {
        "dependent-map" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.dependent-sum
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2") hsPkgs.dependent-sum;
        };
      };
    }