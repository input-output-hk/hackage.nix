{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "markdown";
        version = "0.1.17.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/markdown";
      url = "";
      synopsis = "Convert Markdown to HTML, with XSS protection";
      description = "This library leverages existing high-performance libraries (attoparsec, blaze-html, text, and conduit), and should integrate well with existing codebases.";
      buildType = "Simple";
    };
    components = {
      "markdown" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.attoparsec)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.text)
          (hsPkgs.data-default)
          (hsPkgs.xss-sanitize)
          (hsPkgs.containers)
          (hsPkgs.xml-types)
          (hsPkgs.xml-conduit)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.markdown)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.call-stack)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }