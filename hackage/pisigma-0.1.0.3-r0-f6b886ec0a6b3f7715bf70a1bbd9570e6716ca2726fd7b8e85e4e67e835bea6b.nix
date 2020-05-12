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
      identifier = { name = "pisigma"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>";
      author = "Thorsten Altenkirch <txa@cs.nott.ac.uk>,\nAndres Loeh <kspisigma@andres-loeh.de>,\nNils Anders Danielsson <nad@cs.nott.ac.uk>,\nNicolas Oury <Nicolas.Oury@ed.ac.uk>,\nDarin Morrison <dwm@cs.nott.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "dependently typed core language";
      description = "dependently typed core language";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."haskeline-class" or (errorHandler.buildDepError "haskeline-class"))
          (hsPkgs."mpppc" or (errorHandler.buildDepError "mpppc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = { "pisigma" = { buildable = true; }; };
      };
    }