{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xss-sanitize";
          version = "0.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Greg Weber <greg@gregweber.info>";
        author = "Greg Weber <greg@gregweber.info>";
        homepage = "http://github.com/yesodweb/haskell-xss-sanitize";
        url = "";
        synopsis = "sanitize untrusted HTML to prevent XSS attacks";
        description = "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/yesodweb/haskell-xss-sanitize> for more details";
        buildType = "Simple";
      };
      components = {
        "xss-sanitize" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.tagsoup
            hsPkgs.utf8-string
            hsPkgs.network
            hsPkgs.css-text
            hsPkgs.text
            hsPkgs.attoparsec
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.tagsoup
              hsPkgs.utf8-string
              hsPkgs.network
              hsPkgs.css-text
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
        };
      };
    }