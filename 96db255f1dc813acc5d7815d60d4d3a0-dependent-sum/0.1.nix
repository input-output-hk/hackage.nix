{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dependent-sum";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <mokus@deepbondi.net>";
        author = "James Cook <mokus@deepbondi.net>";
        homepage = "https://github.com/mokus0/dependent-sum";
        url = "";
        synopsis = "Dependent sum type";
        description = "Dependent sums and supporting typeclasses for\ncomparing and formatting them.";
        buildType = "Simple";
      };
      components = {
        dependent-sum = {
          depends  = [ hsPkgs.base ];
        };
      };
    }