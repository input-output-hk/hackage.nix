{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dependent-map";
          version = "0.1.1.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/dependent-map";
        url = "";
        synopsis = "Dependent finite maps (partial dependent products)";
        description = "Provides a type called @DMap@ which generalizes\n@Data.Map.Map@, allowing keys to specify the type\nof value that can be associated with them.";
        buildType = "Simple";
      };
      components = {
        dependent-map = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.dependent-sum
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.dependent-sum;
        };
      };
    }