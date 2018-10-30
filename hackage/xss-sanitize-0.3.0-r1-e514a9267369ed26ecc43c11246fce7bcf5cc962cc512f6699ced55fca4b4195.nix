{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xss-sanitize";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://github.com/gregwebs/haskell-xss-sanitize";
      url = "";
      synopsis = "sanitize untrusted HTML to prevent XSS attacks";
      description = "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/gregwebs/haskell-xss-sanitize> for more details";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.tagsoup)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.css-text)
          (hsPkgs.text)
          (hsPkgs.attoparsec-text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.tagsoup)
            (hsPkgs.utf8-string)
            (hsPkgs.network)
            (hsPkgs.css-text)
            (hsPkgs.text)
            (hsPkgs.attoparsec-text)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }