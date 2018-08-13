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
      specVersion = "1.2";
      identifier = {
        name = "blogination";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Very simple static blog software";
      description = "Blogination reads files written in markdown and outputs xhtml. Supports syntax highlighting. Philosophy is simplicity. Can be used as a library, in a web application for example. Intended use is a simple commandline program to run after changes are made. Ideally use darcs or git with it.";
      buildType = "Simple";
    };
    components = {
      "blogination" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.pandoc)
          (hsPkgs.xhtml)
          (hsPkgs.highlighting-kate)
          (hsPkgs.higherorder)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
          (hsPkgs.old-locale)
          (hsPkgs.regex-compat)
          (hsPkgs.time)
          (hsPkgs.xml)
          (hsPkgs.feed)
        ];
      };
      exes = {
        "blogination" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ConfigFile)
            (hsPkgs.haskell98)
            (hsPkgs.old-time)
          ];
        };
      };
    };
  }