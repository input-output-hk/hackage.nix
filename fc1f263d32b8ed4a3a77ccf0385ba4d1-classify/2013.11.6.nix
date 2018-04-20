{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "classify";
          version = "2013.11.6";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "Lemmih <lemmih@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Library for classification of media files.";
        description = "";
        buildType = "Simple";
      };
      components = {
        classify = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
      };
    }