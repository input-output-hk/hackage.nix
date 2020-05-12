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
      specVersion = "1.2.3";
      identifier = { name = "records"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "© 2007–2010 Brandenburgische Technische Universität Cottbus";
      maintainer = "jeltsch@tu-cottbus.de";
      author = "Wolfgang Jeltsch";
      homepage = "http://community.haskell.org/~jeltsch/records/";
      url = "http://hackage.haskell.org/packages/archive/records/0.1.1.2/records-0.1.1.2.tar.gz";
      synopsis = "A flexible record system";
      description = "This package provides a flexible record system which has some novel features:\n\n* Using record type families, the type system can be used to describe relationships\nbetween field types.\n\n* Record scheme induction permits the implementation of polymorphic record\ncombinators that work on whole records instead of only a fixed set of fields.\n\n* Subkind polymorphism for sorts makes it possible to impose varying restrictions on\nthe structure of field types.\n\nFor detailed information, please refer to the paper\n/Generic Record Combinators with Static Type Checking/.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kinds" or (errorHandler.buildDepError "kinds"))
          (hsPkgs."type-functions" or (errorHandler.buildDepError "type-functions"))
          ];
        buildable = true;
        };
      };
    }