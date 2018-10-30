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
        name = "yesod-auth-kerberos";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Arash Rouhani";
      author = "Arash Rouhani";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Kerberos Authentication for Yesod.";
      description = "Kerberos Authentication for Yesod.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.authenticate-kerberos)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-form)
          (hsPkgs.hamlet)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }