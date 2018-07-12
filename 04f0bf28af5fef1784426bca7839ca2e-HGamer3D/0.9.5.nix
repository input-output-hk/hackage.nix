{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "HGamer3D";
          version = "0.9.5";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@gmail.com";
        author = "Peter Althainz";
        homepage = "http://www.hgamer3d.org";
        url = "";
        synopsis = "Toolset for the Haskell Game Programmer";
        description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell.";
        buildType = "Simple";
      };
      components = {
        "HGamer3D" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.vect
            hsPkgs.binary-serialise-cbor
            hsPkgs.clock
            hsPkgs.cereal
            hsPkgs.fresco-binding
          ];
        };
      };
    }