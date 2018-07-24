{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sv-svfactor";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
        maintainer = "george@qfpl.io";
        author = "George Wilson";
        homepage = "https://github.com/qfpl/sv";
        url = "";
        synopsis = "sv-core + svfactor";
        description = "<<http://i.imgur.com/uZnp9ke.png>>\n\nUse sv-core's decoding atop svfactor's parser";
        buildType = "Simple";
      };
      components = {
        "sv-svfactor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.profunctors
            hsPkgs.sv-core
            hsPkgs.svfactor
            hsPkgs.validation
          ];
        };
      };
    }