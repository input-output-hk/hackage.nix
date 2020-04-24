{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pkgconfig = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "alsa-core"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Henning Thielemann <alsa@henning-thielemann.de>, Bjorn Bringert <bjorn@bringert.net>, Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API (Exceptions).";
      description = "This package provides access to ALSA infrastructure,\nthat is needed by both alsa-seq and alsa-pcm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = (pkgs.lib).optional (!flags.pkgconfig) (pkgs."asound" or ((hsPkgs.pkgs-errors).sysDepError "asound"));
        pkgconfig = (pkgs.lib).optional (flags.pkgconfig) (pkgconfPkgs."alsa" or ((hsPkgs.pkgs-errors).pkgConfDepError "alsa"));
        buildable = true;
        };
      };
    }