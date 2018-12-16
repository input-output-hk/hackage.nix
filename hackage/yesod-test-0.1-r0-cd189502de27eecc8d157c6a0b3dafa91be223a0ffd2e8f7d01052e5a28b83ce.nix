{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod-test";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nubis <nubis@woobiz.com.ar>";
      author = "Nubis <nubis@woobiz.com.ar>";
      homepage = "http://www.yesodweb.com";
      url = "";
      synopsis = "integration testing for WAI/Yesod Applications";
      description = "Behaviour Oriented integration Testing for Yesod Applications";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.hxt)
          (hsPkgs.parsec)
          (hsPkgs.persistent)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-test)
          (hsPkgs.network)
          (hsPkgs.http-types)
          (hsPkgs.HUnit)
          (hsPkgs.hspec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }