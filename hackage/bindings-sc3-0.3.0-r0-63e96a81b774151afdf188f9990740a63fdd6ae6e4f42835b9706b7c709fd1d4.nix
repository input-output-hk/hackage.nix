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
      specVersion = "1.6";
      identifier = { name = "bindings-sc3"; version = "0.3.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2010-2012";
      maintainer = "Stefan Kersten <sk@k-hornz.de>";
      author = "Stefan Kersten <sk@k-hornz.de>";
      homepage = "http://space.k-hornz.de/software/bindings-sc3/";
      url = "";
      synopsis = "Bindings to the SuperCollider synthesis engine library.";
      description = "This library provides low level bindings to the SuperCollider synthesis\nengine library (@libscsynth@). If you are looking for a higher level\nHaskell interface, please use the hsc3-process package\n(<http://hackage.haskell.org/package/hsc3-process>).\n\nChangeLog: <https://github.com/kaoskorobase/bindings-sc3/blob/master/ChangeLog.md>\n\nIn order to build this package, you need to first build the dynamic library\nversion of SuperCollider <supercollider.sourceforge.net> by passing\n@-DLIBSCSYNTH=ON@ to @cmake@. Then build this library by passing the\nlocation of the SuperCollider header files and dynamic library directory to\ncabal:\n\n@\ncabal install bindings-sc3 \\\n@\n\nIf you copy @libscsynth@ to a system library location, you may omit @--extra-library-dirs@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        libs = [ (pkgs."scsynth" or (errorHandler.sysDepError "scsynth")) ];
        buildable = true;
      };
    };
  }