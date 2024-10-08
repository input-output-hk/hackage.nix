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
    flags = { cabal19 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "debian"; version = "3.55"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marco Túlio Gontijo e Silva <marcot@debian.org>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "http://marcot.eti.br/darcs/haskell-debian";
      url = "";
      synopsis = "Modules for working with the Debian package system";
      description = "This library includes modules covering some basic data types defined by\nthe Debian policy manual - version numbers, control file syntax, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ] ++ [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ];
        buildable = true;
      };
      exes = {
        "fakechanges" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
        "debian-report" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
        "cabal-debian" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ] ++ [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ];
          buildable = true;
        };
        "apt-get-build-depends" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
      };
    };
  }