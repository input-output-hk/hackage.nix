{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hsndfile-vector";
        version = "0.5.2";
      };
      license = "LicenseRef-LGPL-2";
      copyright = "Stefan Kersten, 2007-2010";
      maintainer = "Stefan Kersten <sk@k-hornz.de>";
      author = "Stefan Kersten";
      homepage = "http://haskell.org/haskellwiki/Hsndfile";
      url = "";
      synopsis = "Haskell bindings for libsndfile (Data.Vector interface)";
      description = "Haskell bindings for libsndfile (@Data.Vector@ interface).\n\nFor more information on /hsndfile/ visit its homepage at <http://haskell.org/haskellwiki/Hsndfile>.";
      buildType = "Simple";
    };
    components = {
      "hsndfile-vector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsndfile)
          (hsPkgs.vector)
        ];
      };
    };
  }