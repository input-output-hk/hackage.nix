{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-everything";
          version = "2015.4.15";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "David Luposchainsky <dluposchainsky(λ)gmail.com>";
        author = "David Luposchainsky";
        homepage = "";
        url = "";
        synopsis = "Everything.";
        description = "Install some packages.";
        buildType = "Simple";
      };
      components = {
        "acme-everything" = {
          depends  = [
            hsPkgs."3d-graphics-examples"
            hsPkgs."3dmodels"
            hsPkgs."4Blocks"
            hsPkgs.ABList
            hsPkgs.AC-Angle
            hsPkgs.AC-Boolean
            hsPkgs.AC-BuildPlatform
            hsPkgs.AC-Colour
            hsPkgs.AC-EasyRaster-GTK
            hsPkgs.AC-HalfInteger
          ];
        };
      };
    }