{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hsgnutls"; version = "0.2.3.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "";
      author = "Einar Kartunen <ekarttun@cs.helsinki.fi>,\nHenning Günther <h.guenther@tu-bs.de>";
      homepage = "http://www.cs.helsinki.fi/u/ekarttun/hsgnutls";
      url = "";
      synopsis = "Library wrapping the GnuTLS API.";
      description = "hsgnutls is a wrapper to the GNU TLS Library.\nCurrently it is in quite early stages but offers client functionality\nand parts of the server-side interface. Anonymous and X509 authentication\nis supported, but SRP and OpenPGP will appear in a future version.\nhsgnutls uses the attribute implementation borrowed from Gtk2Hs.\n\nNote this is not the official hsgnutls, but rather a fork updated for the needs\nof the Barracuda ad-hoc chat client, which repo can be found at\n<http://repos.mroot.net/sep07-adhoc>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."gnutls" or ((hsPkgs.pkgs-errors).sysDepError "gnutls"))
          (pkgs."gcrypt" or ((hsPkgs.pkgs-errors).sysDepError "gcrypt"))
          ];
        buildable = true;
        };
      };
    }