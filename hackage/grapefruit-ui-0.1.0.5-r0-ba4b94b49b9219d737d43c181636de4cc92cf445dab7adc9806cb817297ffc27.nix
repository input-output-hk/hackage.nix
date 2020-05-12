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
      specVersion = "1.8";
      identifier = { name = "grapefruit-ui"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus\n© 2011–2014 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://grapefruit-project.org/";
      url = "http://hackage.haskell.org/packages/archive/grapefruit-ui/0.1.0.5/grapefruit-ui-0.1.0.5.tar.gz";
      synopsis = "Declarative user interface programming";
      description = "Grapefruit is a library for Functional Reactive Programming (FRP)\nwith a focus on user interfaces. FRP makes it possible to\nimplement reactive and interactive systems in a declarative\nstyle. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains general user interface support. To make use\nof it, it has to be complemented by a UI backend. It is possible\nto have different UI backends implementing the same general\ninterface on top of different UI toolkits. At the moment, the\nonly backend is one based on GTK+. This is provided by the\ngrapefruit-ui-gtk package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fraction" or (errorHandler.buildDepError "fraction"))
          (hsPkgs."grapefruit-frp" or (errorHandler.buildDepError "grapefruit-frp"))
          (hsPkgs."grapefruit-records" or (errorHandler.buildDepError "grapefruit-records"))
          ];
        buildable = true;
        };
      };
    }