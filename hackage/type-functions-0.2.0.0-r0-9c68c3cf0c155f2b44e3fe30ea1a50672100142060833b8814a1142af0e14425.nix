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
      identifier = { name = "type-functions"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2009–2010 Brandenburgische Technische Universität Cottbus";
      maintainer = "jeltsch@tu-cottbus.de";
      author = "Wolfgang Jeltsch";
      homepage = "http://community.haskell.org/~jeltsch/type-functions/";
      url = "http://hackage.haskell.org/packages/archive/type-functions/0.2.0.0/type-functions-0.2.0.0.tar.gz";
      synopsis = "Emulation of type-level functions";
      description = "This package supports emulation of type-level functions using defunctionalization.\nAll functions whose domain is a subkind of&#xA0;@*@ and whose codomain is&#xA0;@*@\nitself can be represented.\n\nFor detailed information, please refer to Subsection&#xA0;3.2 of the paper\n/Generic Record Combinators with Static Type Checking/.";
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