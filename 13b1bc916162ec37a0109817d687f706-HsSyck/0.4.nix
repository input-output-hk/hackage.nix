{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HsSyck";
          version = "0.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Audrey Tang, Gaal Yahas, 2005, 2006, 2007";
        maintainer = "audreyt@audreyt.org";
        author = "Audrey Tang";
        homepage = "";
        url = "";
        synopsis = "Fast, lightweight YAML loader and dumper";
        description = "Fast, lightweight YAML loader and dumper\n\nThis is an interface to the @syck@ C library for parsing and\ndumping YAML data. It lets you transform textual YAML data into an\nobject of type 'YamlNode', and vice versa, fast.";
        buildType = "Custom";
      };
      components = {
        HsSyck = {
          depends  = [ hsPkgs.base ];
        };
      };
    }