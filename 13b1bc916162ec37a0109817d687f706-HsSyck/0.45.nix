{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      sybinbase = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "HsSyck";
          version = "0.45";
        };
        license = "BSD-3-Clause";
        copyright = "Audrey Tang, Gaal Yahas, 2005, 2006, 2007, 2008, 2009";
        maintainer = "audreyt@audreyt.org";
        author = "Audrey Tang";
        homepage = "";
        url = "";
        synopsis = "Fast, lightweight YAML loader and dumper";
        description = "This is a simple YAML ('Yet Another Markup Language') processor,\nused by the Pugs project for handling data serialization; this can be\nuseful for optimization and caching purposes.\n\nThis is an interface to the @syck@ C library for parsing and\ndumping YAML data. It lets you transform textual YAML data into an\nobject of type 'YamlNode', and vice versa, fast.";
        buildType = "Simple";
      };
      components = {
        HsSyck = {
          depends  = if _flags.sybinbase
            then [
              hsPkgs.base
              hsPkgs.bytestring
            ]
            else [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.syb
            ];
        };
      };
    }