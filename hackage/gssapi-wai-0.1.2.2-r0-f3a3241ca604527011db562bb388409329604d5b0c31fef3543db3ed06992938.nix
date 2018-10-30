{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gssapi-wai";
        version = "0.1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Ondrej Palkovsky";
      maintainer = "palkovsky.ondrej@gmail.com";
      author = "Ondrej Palkovsky";
      homepage = "https://github.com/ondrap/gssapi-wai";
      url = "";
      synopsis = "WAI Middleware for SPNEGO authentiaction";
      description = "Basic WAI Middleware allows both SPNEGO and failback to Kerberos\nusername/password authentication.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gssapi)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.vault)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
        ];
      };
    };
  }