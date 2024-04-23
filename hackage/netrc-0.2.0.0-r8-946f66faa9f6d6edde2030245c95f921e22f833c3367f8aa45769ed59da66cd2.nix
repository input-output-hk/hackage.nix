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
    flags = { bytestring_has_builder = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "netrc"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "© 2015 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/netrc";
      url = "";
      synopsis = "Parser for .netrc files";
      description = "This package provides a parser and a printer for so-called @.netrc@ files.\n\nSee <http://linux.die.net/man/5/netrc netrc(5)> manual page for more\ninformation about @.netrc@ files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (if flags.bytestring_has_builder
          then [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ]
          else [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
          ]);
        buildable = true;
      };
      tests = {
        "test-netrc" = {
          depends = [
            (hsPkgs."netrc" or (errorHandler.buildDepError "netrc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }