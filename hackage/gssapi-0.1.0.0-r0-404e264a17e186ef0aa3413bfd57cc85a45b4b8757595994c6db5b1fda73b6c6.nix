{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gssapi"; version = "0.1.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = [
          (pkgs."gssapi_krb5" or ((hsPkgs.pkgs-errors).sysDepError "gssapi_krb5"))
          (pkgs."krb5" or ((hsPkgs.pkgs-errors).sysDepError "krb5"))
          ];
        buildable = true;
        };
      };
    }