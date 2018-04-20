{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iCalendar";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Tupil";
        maintainer = "Clint Adams <clint@debian.org>";
        author = "Eelco Lempsink <eml+hackage@tupil.com>";
        homepage = "";
        url = "";
        synopsis = "Parser for iCalendar format (RFC2445)";
        description = "Parser for the iCalendar format (version 2.0, RFC2445).\n\nFeatures:\n\n* Unfolds folded lines (see RFC)\n\n* Supports all IANA iCalendar tokens\n\n/Warning!/  This is version 0.0, important things are missing\n\n* Property and parameter values are not parsed, but kept as in the file.\n\n* There are no restrictions on the properties components can have.\n\n* Line unfolding causes error messages to report the wrong line.\n\nThis package is meant to grow to a full-fledged data definition, printer and\nparser for the iCalendar format.  But that will probably take some time.  So,\nif you've come here because you need this, please e-mail me (Eelco Lempsink).";
        buildType = "Simple";
      };
      components = {
        iCalendar = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }