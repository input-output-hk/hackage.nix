{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "hydrogen-version";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "julian@scravy.de";
        author = "Julian Fleischer";
        homepage = "https://scravy.de/hydrogen-version/";
        url = "";
        synopsis = "Hydrogen Version Type";
        description = "";
        buildType = "Simple";
      };
      components = {
        hydrogen-version = {
          depends  = [ hsPkgs.base ];
        };
      };
    }