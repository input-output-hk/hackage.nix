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
      identifier = { name = "ssh-tunnel"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha <ncrashed@gmail.com>\n, Anatoliy Nardid <nazgul17@gmail.com>";
      homepage = "https://github.com/Teaspot-Studio/ssh-tunnel#readme";
      url = "";
      synopsis = "Proxy http-client via ssh tunnel.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }