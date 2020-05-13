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
    flags = { exe = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "HsYAML"; version = "0.1.1.2"; };
      license = "GPL-2.0-only";
      copyright = "2015-2018 Herbert Valerio Riedel\n, 2007-2008 Oren Ben-Kiki";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/HsYAML";
      url = "";
      synopsis = "Pure Haskell YAML 1.2 parser";
      description = "@HsYAML@ is a [YAML 1.2](http://yaml.org/spec/1.2/spec.html) parser implementation for Haskell.\n\nFeatures of @HsYAML@ include:\n\n* Pure Haskell implementation with small dependency footprint and emphasis on strict compliance with the [YAML 1.2 specification](http://yaml.org/spec/1.2/spec.html).\n* Direct decoding to native Haskell types via (@aeson@-inspired) typeclass-based API (see \"Data.YAML\").\n* Support for constructing custom YAML node graph representation (including support for cyclic YAML data structures).\n* Support for the standard (untyped) /Failsafe/, (strict) /JSON/, and (flexible) /Core/ \\\"schemas\\\" providing implicit typing rules as defined in the YAML 1.2 specification (including support for user-defined custom schemas).\n* Event-based API resembling LibYAML's Event-based API (see \"Data.YAML.Event\").\n* Low-level API access to lexical token-based scanner (see \"Data.YAML.Token\").\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."fail" or (errorHandler.buildDepError "fail"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
        buildable = true;
        };
      exes = {
        "yaml-test" = {
          depends = (pkgs.lib).optionals (flags.exe) [
            (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."microaeson" or (errorHandler.buildDepError "microaeson"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = if flags.exe then true else false;
          };
        };
      };
    }