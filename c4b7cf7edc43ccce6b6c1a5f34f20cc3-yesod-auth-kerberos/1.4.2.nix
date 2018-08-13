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
      specVersion = "1.6.0";
      identifier = {
        name = "yesod-auth-kerberos";
        version = "1.4.2";
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
      "yesod-auth-kerberos" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.authenticate-kerberos)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-form)
          (hsPkgs.bytestring)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
    };
  }