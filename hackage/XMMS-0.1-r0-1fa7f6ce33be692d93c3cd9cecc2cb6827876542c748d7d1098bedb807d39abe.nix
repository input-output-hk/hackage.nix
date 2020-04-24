{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "XMMS"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "waterlaz@gmail.com";
      author = "Vodolazskiy Evgeniy";
      homepage = "";
      url = "";
      synopsis = "XMMS2 client library.";
      description = "Provides the haskell client lib for XMMS2";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        libs = [
          (pkgs."xmmsclient" or ((hsPkgs.pkgs-errors).sysDepError "xmmsclient"))
          (pkgs."xmmsclient-glib" or ((hsPkgs.pkgs-errors).sysDepError "xmmsclient-glib"))
          ];
        buildable = true;
        };
      };
    }