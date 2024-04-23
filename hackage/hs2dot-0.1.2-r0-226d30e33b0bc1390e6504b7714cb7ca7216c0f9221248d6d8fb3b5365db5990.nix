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
      identifier = { name = "hs2dot"; version = "0.1.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "oscar.finnsson@gmail.com";
      author = "Oscar Finnsson";
      homepage = "http://www.github.com/finnsson/hs2graphviz";
      url = "";
      synopsis = "Generate graphviz-code from Haskell-code.";
      description = "@hs2dot@ can generate graphviz code by analyzing Haskell source code.\n\nUsage (to generate a pdf from a source code file Hack.hs)\n\n> hs2dot Hack.hs | dot -T pdf -o Hack.pdf\n\nYou can analyze multiple modules together:\n\n> hs2dot Foo.hs Bar.hs | dot -T png -o FooBar.png";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hs2dot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          ];
          buildable = true;
        };
      };
    };
  }