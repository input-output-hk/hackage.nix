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
      specVersion = "1.0";
      identifier = { name = "penn-treebank"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Eric Kow 2008";
      maintainer = "eric.kow@gmail.com";
      author = "Eric Kow";
      homepage = "";
      url = "";
      synopsis = "Tools for manipulating the Penn TreeBank";
      description = "\nTools for working with the Penn TreeBank\n\nRight now, this only includes a parser for the Penn TreeBank\nformat.  But additional tools would be more than welcome!\n\nSee <http://code.google.com/p/haskell-ptb>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }