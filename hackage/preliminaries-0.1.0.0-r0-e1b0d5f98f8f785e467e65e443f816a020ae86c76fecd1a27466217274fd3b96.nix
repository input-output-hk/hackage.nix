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
      specVersion = "1.10";
      identifier = { name = "preliminaries"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2016 Yghor Kerscher";
      maintainer = "kerscher@acm.org";
      author = "Yghor Kerscher";
      homepage = "http://github.com/kerscher/preliminaries";
      url = "";
      synopsis = "A larger alternative to the Prelude.";
      description = "A GHC-only alternative to the Prelude with a large amount of imports available by default.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."classy-prelude-conduit" or (errorHandler.buildDepError "classy-prelude-conduit"))
          (hsPkgs."abstract-par" or (errorHandler.buildDepError "abstract-par"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
          (hsPkgs."microlens-contra" or (errorHandler.buildDepError "microlens-contra"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          (hsPkgs."monad-parallel" or (errorHandler.buildDepError "monad-parallel"))
          (hsPkgs."mono-traversable-instances" or (errorHandler.buildDepError "mono-traversable-instances"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm-conduit" or (errorHandler.buildDepError "stm-conduit"))
        ];
        buildable = true;
      };
    };
  }