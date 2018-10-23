{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-markdown";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Alexander Dunlap";
      maintainer = "alexander.dunlap@gmail.com";
      author = "Alexander Dunlap";
      homepage = "";
      url = "";
      synopsis = "Markdown processing for Yesod sites using Pandoc";
      description = "Process Markdown in Yesod sites.";
      buildType = "Simple";
    };
    components = {
      "yesod-markdown" = {
        depends  = [
          (hsPkgs.yesod)
          (hsPkgs.pandoc)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }