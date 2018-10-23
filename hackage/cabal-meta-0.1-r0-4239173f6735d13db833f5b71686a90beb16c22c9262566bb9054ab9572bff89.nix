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
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "build multiple packages at once";
      description = "build multiple packages at once";
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