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
      specVersion = "1.18";
      identifier = { name = "config-ini"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "©2017 Getty Ritter";
      maintainer = "Getty Ritter <config-ini@infinitenegativeutility.com>";
      author = "Getty Ritter <config-ini@infinitenegativeutility.com>";
      homepage = "https://github.com/aisamanra/config-ini";
      url = "";
      synopsis = "A library for simple INI-based configuration files.";
      description = "The @config-ini@ library is a set of small monadic languages\nfor writing simple configuration languages with convenient,\nhuman-readable error messages.\n\n> parseConfig :: IniParser (Text, Int, Bool)\n> parseConfig = section \"NETWORK\" $ do\n>   user <- field        \"user\"\n>   port <- fieldOf      \"port\" number\n>   enc  <- fieldFlagDef \"encryption\" True\n>   return (user, port, enc)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ];
        buildable = true;
        };
      tests = {
        "test-ini-compat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
            (hsPkgs."config-ini" or (errorHandler.buildDepError "config-ini"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "test-prewritten" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."config-ini" or (errorHandler.buildDepError "config-ini"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        "test-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "7.10"
            then false
            else true;
          };
        };
      };
    }