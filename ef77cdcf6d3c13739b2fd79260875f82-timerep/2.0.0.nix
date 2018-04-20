{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "timerep";
          version = "2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Hugo Daniel Gomes";
        maintainer = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
        author = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Parse and display time according to some RFCs (RFC3339, RFC2822, RFC822)";
        description = "\nParse and display time according to some RFC's.\n\nSupported:\n\n* RFC822 <http://www.ietf.org/rfc/rfc0822.txt>\n* RFC2822 <http://www.ietf.org/rfc/rfc2822.txt>\n* RFC3339 <http://www.ietf.org/rfc/rfc3339.txt>\n\nSpecial thanks to Koral for all the suggestions and help in solving some bugs\n";
        buildType = "Simple";
      };
      components = {
        timerep = {
          depends  = [
            hsPkgs.base
            hsPkgs.monoid-subclasses
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.attoparsec
          ];
        };
        tests = {
          Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.cabal-test-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.time
              hsPkgs.time-locale-compat
              hsPkgs.timerep
            ];
          };
        };
      };
    }