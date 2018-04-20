{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "timerep";
          version = "2.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010-2015 Hugo Daniel Gomes";
        maintainer = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
        author = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
        homepage = "https://github.com/HugoDaniel/timerep";
        url = "";
        synopsis = "Parse and display time according to some RFCs (RFC3339, RFC2822, RFC822)";
        description = "Parse and display time according to some RFC's.\n\nSupported:\n\n* RFC822 <http://www.ietf.org/rfc/rfc0822.txt>\n\n* RFC2822 <http://www.ietf.org/rfc/rfc2822.txt>\n\n* RFC3339 <http://www.ietf.org/rfc/rfc3339.txt>\n\nSpecial thanks to Koral for all the suggestions and help in solving some bugs.";
        buildType = "Simple";
      };
      components = {
        timerep = {
          depends  = [
            hsPkgs.base
            hsPkgs.monoid-subclasses
            hsPkgs.text
            hsPkgs.time
            hsPkgs.attoparsec
          ];
        };
        tests = {
          Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.time
              hsPkgs.timerep
            ];
          };
        };
      };
    }