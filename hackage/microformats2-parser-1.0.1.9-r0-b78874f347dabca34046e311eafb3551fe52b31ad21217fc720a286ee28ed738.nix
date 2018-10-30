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
        name = "microformats2-parser";
        version = "1.0.1.9";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "2015-2018 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/microformats2-parser";
      url = "";
      synopsis = "A Microformats 2 parser.";
      description = "A parser for Microformats 2 (http://microformats.org/wiki/microformats2), a simple way to describe structured information in HTML.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.either)
          (hsPkgs.safe)
          (hsPkgs.errors)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.aeson-qq)
          (hsPkgs.lens-aeson)
          (hsPkgs.data-default)
          (hsPkgs.html-conduit)
          (hsPkgs.xml-lens)
          (hsPkgs.tagsoup)
          (hsPkgs.network-uri)
          (hsPkgs.blaze-markup)
          (hsPkgs.xss-sanitize)
          (hsPkgs.pcre-heavy)
          (hsPkgs.attoparsec)
        ];
      };
      exes = {
        "microformats2-parser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.options)
            (hsPkgs.wai-cli)
            (hsPkgs.wai-extra)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.data-default)
            (hsPkgs.text)
            (hsPkgs.scotty)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.microformats2-parser)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.network-uri)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations-pretty-diff)
            (hsPkgs.template-haskell)
            (hsPkgs.microformats2-parser)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.aeson-qq)
            (hsPkgs.data-default)
            (hsPkgs.html-conduit)
            (hsPkgs.xml-lens)
          ];
        };
      };
    };
  }