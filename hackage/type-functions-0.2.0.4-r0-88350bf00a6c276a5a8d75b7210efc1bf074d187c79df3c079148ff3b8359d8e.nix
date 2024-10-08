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
      identifier = { name = "type-functions"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "© 2009–2010 Brandenburgische Technische Universität Cottbus;\n© 2011–2012 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/type-functions";
      url = "http://hackage.haskell.org/packages/archive/type-functions/0.2.0.4/type-functions-0.2.0.4.tar.gz";
      synopsis = "Emulation of type-level functions";
      description = "This package supports emulation of type-level functions using\ndefunctionalization. All functions whose domain is a subkind\nof&#xA0;@*@ and whose codomain is&#xA0;@*@ itself can be\nrepresented.\n\nFor detailed information, please refer to Subsection&#xA0;3.2 of\nthe paper\n/Generic Record Combinators with Static Type Checking/.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kinds" or (errorHandler.buildDepError "kinds"))
        ];
        buildable = true;
      };
    };
  }