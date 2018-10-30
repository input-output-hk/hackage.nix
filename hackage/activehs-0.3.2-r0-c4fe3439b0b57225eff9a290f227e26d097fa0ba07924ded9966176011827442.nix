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
      specVersion = "1.6";
      identifier = {
        name = "activehs";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artúr Poór <gombocarti@gmail.com>";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Haskell code presentation tool";
      description = "ActiveHs is a Haskell source code presentation tool, developed for\neducation purposes.\n\nUser's Guide: <http://lambda.inf.elte.hu/fp/UsersGuide_en.xml>\n\nDeveloper's Documentation (partial): <http://lambda.inf.elte.hu/fp/DevDoc_en.xml>\n\nThe software is in prototype phase, although it already served more\nthan 700 000 user requests at Eötvös Loránd University Budapest, Hungary.\n\nNote that this software has many rough edges; you are welcome to\nwork on it!";
      buildType = "Simple";
    };
    components = {
      exes = {
        "activehs" = {
          depends  = [
            (hsPkgs.highlighting-kate)
            (hsPkgs.hoogle)
            (hsPkgs.dia-base)
            (hsPkgs.dia-functions)
            (hsPkgs.activehs-base)
            (hsPkgs.data-pprint)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.syb)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.xhtml)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.pureMD5)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.split)
            (hsPkgs.pandoc)
            (hsPkgs.time)
            (hsPkgs.old-time)
            (hsPkgs.process)
            (hsPkgs.hint)
            (hsPkgs.simple-reflect)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }