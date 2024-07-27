{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "hsndfile"; version = "0.3.2"; };
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
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        libs = [ (pkgs."sndfile" or (errorHandler.sysDepError "sndfile")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }