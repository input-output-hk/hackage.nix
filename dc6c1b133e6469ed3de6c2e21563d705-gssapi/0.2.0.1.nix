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
      specVersion = "1.10";
      identifier = {
        name = "gssapi";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Ondrej Palkovsky";
      maintainer = "palkovsky.ondrej@gmail.com";
      author = "Ondrej Palkovsky";
      homepage = "https://github.com/ondrap/gssapi";
      url = "";
      synopsis = "libgssapi and libkrb5 bindings for haskell";
      description = "Simple bindings for libgssapi(SSO) and libkrb5(user/password) library.";
      buildType = "Simple";
    };
    components = {
      "gssapi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
        ];
        libs = [
          (pkgs.gssapi_krb5)
          (pkgs.krb5)
        ];
      };
    };
  }