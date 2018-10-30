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
      specVersion = "1.6.0";
      identifier = {
        name = "yesod-auth-oauth";
        version = "1.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Litchard";
      author = "Hiromi Ishii";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "OAuth Authentication for Yesod.";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-auth-oauth>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.authenticate-oauth)
          (hsPkgs.bytestring)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.text)
          (hsPkgs.yesod-form)
          (hsPkgs.transformers)
          (hsPkgs.lifted-base)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }