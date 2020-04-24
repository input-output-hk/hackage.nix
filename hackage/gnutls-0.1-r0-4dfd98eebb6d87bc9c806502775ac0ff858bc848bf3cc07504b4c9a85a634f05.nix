{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "gnutls"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "";
      url = "";
      synopsis = "Bindings for GNU TLS";
      description = "You almost certainly don't want to depend on this release.\n\nThis is a pre-alpha, almost useless release; its only purpose is to enable\nTLS support in some of my other libraries. More complete bindings for GNU TLS\nwill be released at a later date.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          ];
        libs = [
          (pkgs."gnutls" or ((hsPkgs.pkgs-errors).sysDepError "gnutls"))
          (pkgs."gnutls-extra" or ((hsPkgs.pkgs-errors).sysDepError "gnutls-extra"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gnutls" or ((hsPkgs.pkgs-errors).pkgConfDepError "gnutls"))
          (pkgconfPkgs."gnutls-extra" or ((hsPkgs.pkgs-errors).pkgConfDepError "gnutls-extra"))
          ];
        buildable = true;
        };
      };
    }