{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hsndfile"; version = "0.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "Stefan Kersten, 2007-2008";
      maintainer = "Stefan Kersten <sk@k-hornz.de>";
      author = "Stefan Kersten";
      homepage = "http://darcs.k-hornz.de/cgi-bin/darcsweb.cgi?r=hsndfile;a=summary";
      url = "";
      synopsis = "Haskell bindings for libsndfile";
      description = "Haskell bindings for libsndfile.\n\nLibsndfile is a comprehensive C library for reading\nand writing a large number of soundfile formats:\n<http://www.mega-nerd.com/libsndfile/>.\n\nChangelog and source tarballs can be found at\n<http://space.k-hornz.de/files/software/hsndfile>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        libs = [
          (pkgs."sndfile" or ((hsPkgs.pkgs-errors).sysDepError "sndfile"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }