{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "atl";
          version = "17072";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "strake888@gmail.com";
        author = "Matthew Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Arrow Transformer Library";
        description = "Arrow Transformer Library";
        buildType = "Simple";
      };
      components = {
        atl = {
          depends  = [ hsPkgs.base ];
        };
      };
    }