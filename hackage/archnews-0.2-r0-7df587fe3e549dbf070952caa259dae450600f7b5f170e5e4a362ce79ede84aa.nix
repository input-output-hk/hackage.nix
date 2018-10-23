{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "archnews";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://archhaskell.wordpress.com/";
      url = "";
      synopsis = "Convert Arch Linux package updates in RSS to pretty markdown";
      description = "Convert Arch Linux package updates in RSS to pretty markdown";
      buildType = "Simple";
    };
    components = {
      exes = {
        "archnews" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tagsoup)
            (hsPkgs.download-curl)
            (hsPkgs.containers)
            (hsPkgs.feed)
          ];
        };
      };
    };
  }