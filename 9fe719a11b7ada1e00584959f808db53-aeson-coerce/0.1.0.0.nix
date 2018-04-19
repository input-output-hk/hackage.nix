{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-coerce";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "lichtzwerge GmbH";
        maintainer = "moritz@lichtzwerge.de";
        author = "Moritz Angermann";
        homepage = "https://github.com/lichtzwerge/aeson-coerce#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        aeson-coerce = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
          ];
        };
      };
    }