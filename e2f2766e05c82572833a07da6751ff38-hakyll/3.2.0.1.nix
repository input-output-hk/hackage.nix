{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hakyll";
          version = "3.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jaspervdj@gmail.com";
        author = "Jasper Van der Jeugt";
        homepage = "http://jaspervdj.be/hakyll";
        url = "";
        synopsis = "A static website compiler library";
        description = "Hakyll is a static website compiler library. It provides you with the tools to\ncreate a simple or advanced static website using a Haskell DSL and formats\nsuch as markdown or RST. You can find more information, including a tutorial,\non the website:\n\n* <http://jaspervdj.be/hakyll>\n\nIf you seek assistance, there's:\n\n* A google group: <http://groups.google.com/group/hakyll>\n\n* An IRC channel, @#hakyll@ on freenode\n\nAdditionally, there's the Haddock documentation in the different modules,\nmeant as a reference.";
        buildType = "Simple";
      };
      components = {
        hakyll = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.pandoc
            hsPkgs.regex-base
            hsPkgs.regex-pcre
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.time
            hsPkgs.binary
            hsPkgs.hamlet
            hsPkgs.blaze-html
            hsPkgs.snap-server
            hsPkgs.snap-core
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.HTTP
            hsPkgs.tagsoup
            hsPkgs.hopenssl
            hsPkgs.unix
            hsPkgs.strict-concurrency
          ];
        };
      };
    }