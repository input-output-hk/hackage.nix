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
      identifier = { name = "nymphaea"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Cale Gibbard <cgibbard@gmail.com>";
      author = "Cale Gibbard, Paolo Martini";
      homepage = "";
      url = "";
      synopsis = "An interactive GUI for manipulating L-systems";
      description = "An L-system is a small grammar specifying fractal functions, famous\nfor their uncanny resemblance to plants and other lifeforms.\nnymphaea displays these L-systems in an attractive visual manner, and\nallows you to manipulate them.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nymphaea" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            ];
          buildable = true;
          };
        };
      };
    }