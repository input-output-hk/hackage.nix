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
      specVersion = "1.10";
      identifier = {
        name = "xss-sanitize";
        version = "0.3.6";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "https://github.com/yesodweb/haskell-xss-sanitize#readme";
      url = "";
      synopsis = "sanitize untrusted HTML to prevent XSS attacks";
      description = "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/yesodweb/haskell-xss-sanitize> for more details";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.css-text)
          (hsPkgs.network-uri)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.css-text)
            (hsPkgs.hspec)
            (hsPkgs.network-uri)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }