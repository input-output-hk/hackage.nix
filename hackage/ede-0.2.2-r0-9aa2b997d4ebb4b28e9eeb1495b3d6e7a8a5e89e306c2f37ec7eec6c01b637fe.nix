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
    flags = { build-executable = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ede"; version = "0.2.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "http://github.com/brendanhay/ede";
      url = "";
      synopsis = "Templating language with similar syntax and features to Liquid or Jinja2.";
      description = "ED-E is a templating language written in Haskell with a specific set of features:\n\n* Logicless within reason. A small set of consistent predicates\nand expressions for formatting and presentational logic are provided.\n\n* Secure. No arbitrary code evaluation, with input data required to be fully specified\nat render time.\n\n* Stateless. Parsing and rendering are separate steps so that loading, parsing,\ninclude resolution, and embedding of the compiled template can optionally be\ndone ahead of time, amortising cost.\n\n* Markup agnostic. ED-E is used to write out everything from configuration files for\nsystem services, to HTML and formatted emails.\n\n* Control over purity. Users can choose pure or IO-based resolution of\n@include@ expressions.\n\n* No surprises. All parsing, type assurances, and rendering steps report helpful\nerror messages with line/column metadata. Variable shadowing, unprintable expressions,\nimplicit type coercion, and unbound variable access are all treated as errors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          (hsPkgs."text-manipulate" or (errorHandler.buildDepError "text-manipulate"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "ede" = {
          depends = (pkgs.lib).optionals (!(!flags.build-executable)) [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ede" or (errorHandler.buildDepError "ede"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if !flags.build-executable then false else true;
          };
        };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ede" or (errorHandler.buildDepError "ede"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            ];
          buildable = true;
          };
        };
      };
    }