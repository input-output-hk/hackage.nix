{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      previewserver = true;
      watchserver = true;
      checkexternal = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hakyll";
        version = "4.7.4.0";
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
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lrucache)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-citeproc)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
        ] ++ pkgs.lib.optionals (flags.previewserver) [
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.fsnotify)
          (hsPkgs.system-filepath)
        ]) ++ pkgs.lib.optionals (flags.watchserver) [
          (hsPkgs.fsnotify)
          (hsPkgs.system-filepath)
        ]) ++ pkgs.lib.optionals (flags.checkexternal) [
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
        ];
      };
      exes = {
        "hakyll-init" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "hakyll-tests" = {
          depends  = (([
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.lrucache)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-citeproc)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
          ] ++ pkgs.lib.optionals (flags.previewserver) [
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.fsnotify)
            (hsPkgs.system-filepath)
          ]) ++ pkgs.lib.optionals (flags.watchserver) [
            (hsPkgs.fsnotify)
            (hsPkgs.system-filepath)
          ]) ++ pkgs.lib.optionals (flags.checkexternal) [
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }