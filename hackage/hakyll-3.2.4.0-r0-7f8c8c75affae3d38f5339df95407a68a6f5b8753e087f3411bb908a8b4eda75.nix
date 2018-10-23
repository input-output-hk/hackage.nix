{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      previewserver = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hakyll";
        version = "3.2.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://jaspervdj.be/hakyll";
      url = "";
      synopsis = "A static website compiler library";
      description = "Hakyll is a static website compiler library. It provides you with the tools to\ncreate a simple or advanced static website using a Haskell DSL and formats\nsuch as markdown or RST. You can find more information, including a tutorial,\non the website:\n\n* <http://jaspervdj.be/hakyll>\n\nIf you seek assistance, there's:\n\n* A google group: <http://groups.google.com/group/hakyll>\n\n* An IRC channel, @#hakyll@ on freenode\n\nAdditionally, there's the Haddock documentation in the different modules,\nmeant as a reference.";
      buildType = "Simple";
    };
    components = {
      "hakyll" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.citeproc-hs)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hamlet)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.pandoc)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.regex-base)
          (hsPkgs.regex-pcre)
          (hsPkgs.tagsoup)
          (hsPkgs.time)
          (hsPkgs.unix)
        ] ++ pkgs.lib.optionals (flags.previewserver) [
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
        ];
      };
    };
  }