{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cabal-meta";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "build multiple packages at once";
      description = "see: <http://www.yesodweb.com/blog/2012/04/cabal-meta> and <http://github.com/yesodweb/cabal-meta>";
      buildType = "Simple";
    };
    components = {
      "cabal-meta" = {
        depends  = [
          (hsPkgs.shelly)
          (hsPkgs.text)
          (hsPkgs.system-filepath)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "cabal-meta" = {
          depends  = [
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
          ] ++ [ (hsPkgs.base) ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.shelly)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.unix)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.system-filepath)
          ];
        };
      };
    };
  }