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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "lazyio"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Lazy_IO";
      url = "";
      synopsis = "Run IO actions lazily while respecting their order";
      description = "Run IO actions lazily while respecting their order.\nRunning a value of the LazyIO monad in the IO monad is like starting a thread\nwhich is however driven by its output.\nThat is, the LazyIO action is only executed as far as necessary\nin order to provide the required data.\n\nThe package may help you to avoid stack overflows in @mapM@.\nSay you have\n\n> mapM f xs\n\nwhere @xs@ is a long list. When run, you may encounter a stack overflow.\nTo prevent it, write instead:\n\n> import qualified System.IO.Lazy as LazyIO\n>\n> LazyIO.run $ mapM (LazyIO.interleave . f) xs\n\nThe stack overflow is gone.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."unsafe" or (errorHandler.buildDepError "unsafe"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ (if flags.splitbase
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]);
        buildable = true;
      };
      exes = {
        "test" = { buildable = if !flags.buildtests then false else true; };
      };
    };
  }