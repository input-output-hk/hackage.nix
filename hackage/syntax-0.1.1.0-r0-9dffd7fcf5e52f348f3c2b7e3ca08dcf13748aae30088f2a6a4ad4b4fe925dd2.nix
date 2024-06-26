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
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Abstract syntax descriptions for parsing and pretty-printing.";
      description = "Write single syntax description, get both parser and pretty-printer.\n\nSyntax descriptions are based on semi-isomorphisms from @semi-iso@ library.\n\nThe library is very young. There are lots of useful combinators that could be written.\n\nSee @syntax-example@ for an example.";
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