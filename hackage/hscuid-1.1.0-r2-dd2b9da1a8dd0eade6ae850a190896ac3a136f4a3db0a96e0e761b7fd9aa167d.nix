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
      specVersion = "1.8";
      identifier = { name = "hscuid"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dan.buckmaster@gmail.com";
      author = "Daniel Buckmaster";
      homepage = "https://github.com/eightyeight/hscuid";
      url = "";
      synopsis = "Collision-resistant IDs";
      description = "CUIDs are designed for horizontal scalability and collision\nresistance.\nRead more about them at <https://usecuid.org usecuid.org>.\nHere's everything you need to know:\n@\n\n>>> import Web.Cuid (newCuid, newSlug)\n>>> newCuid\n\"cib3c3tcu0000zwowx9ho2gh4\"\n>>> newSlug\n\"c900001wmf\"\n\n@\nThis module does not use crypto-strength sources of\nrandomness.\nUse at your own peril!\n\nFor better or worse, this module uses semantic versioning\n(see <http://semver.org/ semver.org>).\nThat is, if you want to depend upon, for example, version 1\nof the API, you should add @hscuid ==1.*@ to your Cabal\nfile. No breaking changes will be (deliberately) introduced\nunder that version number.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"));
        buildable = true;
      };
      tests = {
        "hscuid-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hscuid" or (errorHandler.buildDepError "hscuid"))
          ];
          buildable = true;
        };
      };
    };
  }