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
    flags = { debug-typed-queries = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "typedquery"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "©2014-2015 Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/typedquery";
      url = "";
      synopsis = "Parser for SQL augmented with types";
      description = "Base package for parsing queries";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optionals (flags.debug-typed-queries) [
          (hsPkgs."rawstring-qm" or (errorHandler.buildDepError "rawstring-qm"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          ];
        buildable = true;
        };
      };
    }