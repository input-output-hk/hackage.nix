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
        name = "markdown-kate";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joel@outright.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/joelteon/markdown-kate";
      url = "";
      synopsis = "Convert Markdown to HTML, with XSS protection";
      description = "This library leverages existing high-performance libraries (attoparsec, blaze-html, text, and conduit), and should integrate well with existing codebases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.text)
          (hsPkgs.data-default)
          (hsPkgs.xss-sanitize)
          (hsPkgs.containers)
          (hsPkgs.highlighting-kate)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.markdown)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.blaze-html)
            (hsPkgs.text)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }