{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "microformats2-parser";
          version = "0.1.1";
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
        microformats2-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.time
            hsPkgs.either
            hsPkgs.safe
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.microformats2-types
            hsPkgs.html-conduit
            hsPkgs.xml-lens
            hsPkgs.blaze-markup
            hsPkgs.xss-sanitize
            hsPkgs.pcre-heavy
          ];
        };
        exes = {
          microformats2-parser = {
            depends  = [
              hsPkgs.base
              hsPkgs.options
              hsPkgs.warp
              hsPkgs.wai-extra
              hsPkgs.network
              hsPkgs.streaming-commons
              hsPkgs.stringable
              hsPkgs.text
              hsPkgs.scotty
              hsPkgs.blaze-html
              hsPkgs.blaze-markup
              hsPkgs.microformats2-parser
              hsPkgs.microformats2-types
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.hspec
              hsPkgs.template-haskell
              hsPkgs.microformats2-parser
              hsPkgs.microformats2-types
              hsPkgs.raw-strings-qq
              hsPkgs.data-default
              hsPkgs.html-conduit
              hsPkgs.xml-lens
            ];
          };
        };
      };
    }