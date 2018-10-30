{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-locale = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tttool";
        version = "1.0";
      };
      license = "MIT";
      copyright = "2013-2014 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/entropia/tip-toi-reveng";
      url = "";
      synopsis = "Working with files for the Tiptoi® pen";
      description = "The Ravensburger Tiptoi® pen is programmed via special\nfiles. Their file format has been reverse engineered; this\nis a tool to analyse and create such files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tttool" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.template-haskell)
            (hsPkgs.ghc-prim)
            (hsPkgs.JuicyPixels)
            (hsPkgs.aeson)
            (hsPkgs.bytestring-builder)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.vector)
            (hsPkgs.yaml)
          ] ++ (if flags.old-locale
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [ (hsPkgs.time) ]);
        };
      };
    };
  }