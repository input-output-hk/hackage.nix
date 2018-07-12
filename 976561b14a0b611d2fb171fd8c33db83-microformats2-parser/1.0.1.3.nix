{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microformats2-parser";
          version = "1.0.1.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "2015 Greg V <greg@unrelenting.technology>";
        maintainer = "greg@unrelenting.technology";
        author = "Greg V";
        homepage = "https://github.com/myfreeweb/microformats2-parser";
        url = "";
        synopsis = "A Microformats 2 parser.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "microformats2-parser" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.either
            hsPkgs.safe
            hsPkgs.errors
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.aeson
            hsPkgs.aeson-qq
            hsPkgs.lens-aeson
            hsPkgs.data-default
            hsPkgs.html-conduit
            hsPkgs.xml-lens
            hsPkgs.network-uri
            hsPkgs.blaze-markup
            hsPkgs.xss-sanitize
            hsPkgs.pcre-heavy
            hsPkgs.attoparsec
          ];
        };
        exes = {
          "microformats2-parser" = {
            depends  = [
              hsPkgs.base
              hsPkgs.options
              hsPkgs.warp
              hsPkgs.wai-extra
              hsPkgs.network
              hsPkgs.network-uri
              hsPkgs.streaming-commons
              hsPkgs.stringable
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.scotty
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.blaze-html
              hsPkgs.blaze-markup
              hsPkgs.microformats2-parser
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.network-uri
              hsPkgs.hspec
              hsPkgs.hspec-expectations-pretty-diff
              hsPkgs.template-haskell
              hsPkgs.microformats2-parser
              hsPkgs.raw-strings-qq
              hsPkgs.aeson-qq
              hsPkgs.data-default
              hsPkgs.html-conduit
              hsPkgs.xml-lens
            ];
          };
        };
      };
    }