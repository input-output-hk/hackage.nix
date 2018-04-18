{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "setters";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "IlyaPortnov";
        homepage = "";
        url = "";
        synopsis = "Small (TH) library to declare setters for typical `record' data type fields.";
        description = "Haskell declares a getter for each `record' style data type field.\nThis library will help you declare setters (`setFieldName' function for `fieldName' field).";
        buildType = "Simple";
      };
      components = {
        setters = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.template-haskell
          ];
        };
      };
    }