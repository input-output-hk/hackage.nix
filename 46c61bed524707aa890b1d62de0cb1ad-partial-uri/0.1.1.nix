{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "partial-uri";
          version = "0.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2012 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/partial-uri";
        url = "";
        synopsis = "Datatype for passing around unresolved URIs.";
        description = "Datatype wrapping URI that has not been fully resolved yet (such as\na route in a webapp without the application root).";
        buildType = "Simple";
      };
      components = {
        partial-uri = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
          ];
        };
      };
    }