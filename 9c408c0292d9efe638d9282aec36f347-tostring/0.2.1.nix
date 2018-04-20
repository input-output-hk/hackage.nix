{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tostring";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "Silk B.V.";
        homepage = "";
        url = "";
        synopsis = "The ToString class";
        description = "A type class for converting text types to String.";
        buildType = "Simple";
      };
      components = {
        tostring = {
          depends  = [
            hsPkgs.base
            hsPkgs.case-insensitive
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
      };
    }