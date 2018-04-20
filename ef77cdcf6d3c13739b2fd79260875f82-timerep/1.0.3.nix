{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "timerep";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Hugo Daniel Gomes";
        maintainer = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
        author = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Parse and display time according to some RFCs (RFC3339, RFC2822)";
        description = "\nParse and display time according to some RFC's.\nSupported:\nRFC3339 <http://www.ietf.org/rfc/rfc3339.txt>\nRFC2822 <http://www.ietf.org/rfc/rfc2822.txt>\n\nThis package defines a type class to parse and read time representations\nspecified in some RFC's.\nRight now there is only support for reading and showing String\n\nSpecial thanks to Koral for all the suggestions and help in solving some bugs\n";
        buildType = "Simple";
      };
      components = {
        timerep = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
      };
    }