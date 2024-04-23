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
      identifier = { name = "syntax-example-json"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Example JSON parser/pretty-printer.";
      description = "Example JSON parser/pretty-printer.\n\nSource code:\n\n* <https://github.com/Pawel834/syntax-example-json/blob/master/Main.hs Main.hs>\n\nExample input and output:\n\n* <https://github.com/Pawel834/syntax-example-json/blob/master/in.json in.json>\n* <https://github.com/Pawel834/syntax-example-json/blob/master/out.json out.json>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "syntax-example-json" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."semi-iso" or (errorHandler.buildDepError "semi-iso"))
            (hsPkgs."syntax" or (errorHandler.buildDepError "syntax"))
            (hsPkgs."syntax-attoparsec" or (errorHandler.buildDepError "syntax-attoparsec"))
            (hsPkgs."syntax-printer" or (errorHandler.buildDepError "syntax-printer"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
          buildable = true;
        };
      };
    };
  }