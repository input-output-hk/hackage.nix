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
      specVersion = "1.2";
      identifier = {
        name = "authenticate-oauth";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "OAuth client support for authenticate package.";
      description = "OAuth client support for authenticate package.";
      buildType = "Simple";
    };
    components = {
      "authenticate-oauth" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-enumerator)
          (hsPkgs.wai)
          (hsPkgs.utf8-string)
          (hsPkgs.authenticate)
          (hsPkgs.RSA)
          (hsPkgs.time)
          (hsPkgs.base64-bytestring)
          (hsPkgs.SHA)
          (hsPkgs.random)
          (hsPkgs.wai-extra)
        ];
      };
    };
  }