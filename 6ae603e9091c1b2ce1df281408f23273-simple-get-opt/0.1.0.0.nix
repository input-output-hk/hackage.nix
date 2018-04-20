{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-get-opt";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "iavor.diatchki@gmail.com";
        author = "Iavor S. Diatchki";
        homepage = "";
        url = "";
        synopsis = "A simple library for processing command-line options.";
        description = "A simple library for processing command-line options.\nThe library captures a common usage pattern of the GetOpt module\nform the standard libraries.";
        buildType = "Simple";
      };
      components = {
        simple-get-opt = {
          depends  = [ hsPkgs.base ];
        };
      };
    }