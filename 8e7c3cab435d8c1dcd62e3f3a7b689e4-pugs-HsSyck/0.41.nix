{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "pugs-HsSyck";
          version = "0.41";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Audrey Tang, Gaal Yahas, 2005, 2006, 2007";
        maintainer = "audreyt@audreyt.org";
        author = "Audrey Tang";
        homepage = "";
        url = "";
        synopsis = "Fast, lightweight YAML loader and dumper";
        description = "This is a simple YAML ('Yet Another Markup Language') processor,\nused by the Pugs project for handling data serialization; this can be\nuseful for optimization and caching purposes.\n\nThis is an interface to the @syck@ C library for parsing and\ndumping YAML data. It lets you transform textual YAML data into an\nobject of type 'YamlNode', and vice versa, fast.\nNote: This is an old HsSyck, as it was used by Pugs ('pugs-HsSyck'). You probably want\nthe more updated HsSyck, available at <http://hackage.haskell.org/cgi-bin/hackage-scripts/package/HsSyck>.";
        buildType = "Simple";
      };
      components = {
        pugs-HsSyck = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }