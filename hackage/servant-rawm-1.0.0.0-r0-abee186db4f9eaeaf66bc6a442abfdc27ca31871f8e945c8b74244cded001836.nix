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
      identifier = { name = "servant-rawm"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com\n, nil.krjst@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/servant-rawm";
      url = "";
      synopsis = "Embed a raw 'Application' in a Servant API";
      description = "Please see <https://github.com/cdepillabout/servant-rawm#readme README.md>.\n\nAfter @servant-rawm@ 1.0.0.0, the implementation are divided into\nthree packages: @servant-rawm-server@, @servant-rawm-client@,\nand @servant-rawm-docs@.\n\nYou need to use either of the three implementations for the 'RawM' endpoint\nto function correctly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          ];
        buildable = true;
        };
      };
    }