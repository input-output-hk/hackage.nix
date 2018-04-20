{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fast-tagsoup-utf8-only";
          version = "1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Vladimir Shabanov 2011-2012";
        maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
        author = "Vladimir Shabanov <vshabanoff@gmail.com>";
        homepage = "https://github.com/exbb2/fast-tagsoup";
        url = "";
        synopsis = "Fast parser for tagsoup package";
        description = "\nFast TagSoup parser. Speeds of 20-200MB/sec were observed.\n\nWorks only with strict bytestrings.\n\nThis library is intended to be used in conjunction with the original @tagsoup@ package:\n\n> import Text.HTML.TagSoup hiding (parseTags, renderTags)\n> import Text.HTML.TagSoup.Fast.Utf8Only\n\nBesides speed @fast-tagsoup@ correctly handles HTML @\\<script\\>@ and @\\<style\\>@ tags and converts tags to lower case.\nThis fork purposefully removes support for parsing non-utf8 documents, to avoid dependency on text-icu.\nIf you need to handle other encodings, refer to the original <http://hackage.haskell.org/package/fast-tagsoup>\n\nThis parser is used in production in BazQux Reader feeds and comments crawler.";
        buildType = "Simple";
      };
      components = {
        fast-tagsoup-utf8-only = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.tagsoup
          ];
        };
      };
    }