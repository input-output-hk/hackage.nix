{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haskell-tyrant";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Scott <peter@greplin.com>";
      author = "Travis Brady <travis.brady@gmail.com>";
      homepage = "https://github.com/PeterScott/haskell-tyrant";
      url = "";
      synopsis = "Haskell implementation of the Tokyo Tyrant binary protocol";
      description = "A pure Haskell implementation of the Tokyo Tyrant binary protocol.\nTokyo Tyrant is a database server for the Tokyo Cabinet\ndatabase library.  http://tokyocabinet.sourceforge.net/tyrantdoc/";
      buildType = "Simple";
    };
    components = {
      "haskell-tyrant" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
    };
  }