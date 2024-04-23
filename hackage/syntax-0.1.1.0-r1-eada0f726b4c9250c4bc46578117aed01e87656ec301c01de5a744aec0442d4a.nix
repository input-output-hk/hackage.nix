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
      identifier = { name = "syntax"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "PaweÅ Nowak 2014";
      maintainer = "PaweÅ Nowak <pawel834@gmail.com>";
      author = "PaweÅ Nowak";
      homepage = "";
      url = "";
      synopsis = "Abstract syntax descriptions for parsing and pretty-printing.";
      description = "Abstract syntax descriptions for parsing and pretty-printing.\nWrite a single syntax description, get both a parser and a pretty-printer.\n\nSyntax descriptions are based on semi-isomorphisms from @semi-iso@ library.\n\nThe library is very young. There are lots of useful combinators that could be written.\n\nSee @syntax-example@ for an example, @syntax-attoparsec@ and @syntax-pretty@ for\na parser/printer implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semi-iso" or (errorHandler.buildDepError "semi-iso"))
        ];
        buildable = true;
      };
    };
  }