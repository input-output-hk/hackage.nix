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
    flags = { sybinbase = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HsSyck"; version = "0.51"; };
      license = "BSD-3-Clause";
      copyright = "Audrey Tang, Gaal Yahas, 2005, 2006, 2007, 2008, 2009, 2013";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Fast, lightweight YAML loader and dumper";
      description = "This is a simple YAML ('Yet Another Markup Language') processor,\nused by the Pugs project for handling data serialization; this can be\nuseful for optimization and caching purposes.\n\nThis is an interface to the @syck@ C library for parsing and\ndumping YAML data. It lets you transform textual YAML data into an\nobject of type 'YamlNode', and vice versa, fast.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.sybinbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            ];
        buildable = true;
        };
      };
    }