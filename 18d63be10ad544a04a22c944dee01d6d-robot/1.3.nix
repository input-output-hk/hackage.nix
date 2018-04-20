{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "robot";
          version = "1.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "lambda.fairy@gmail.com";
        author = "Chris Wong";
        homepage = "https://github.com/lfairy/robot";
        url = "";
        synopsis = "Simulate keyboard and mouse events";
        description = "Generate native keyboard and mouse events. Using this library,\napplications will respond as if the user performed the action\nthemselves.\n\nFor examples, see the @examples@ folder in the source distribution.";
        buildType = "Simple";
      };
      components = {
        robot = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.transformers
            hsPkgs.xhb
          ];
        };
      };
    }