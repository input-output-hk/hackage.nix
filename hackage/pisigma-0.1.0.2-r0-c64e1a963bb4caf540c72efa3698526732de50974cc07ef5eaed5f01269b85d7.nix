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
      specVersion = "1.6";
      identifier = { name = "pisigma"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>";
      author = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>";
      homepage = "";
      url = "";
      synopsis = "dependently typed core language";
      description = "dependently typed core language";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pisigma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            ];
          buildable = true;
          };
        };
      };
    }