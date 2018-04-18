{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "erf";
          version = "2.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "The error function, erf, and related functions.";
        description = "A type class for the error function, erf, and related functions.\nInstances for Float and Double.";
        buildType = "Simple";
      };
      components = {
        erf = {
          depends  = [ hsPkgs.base ];
        };
      };
    }