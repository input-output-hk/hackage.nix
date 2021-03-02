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
      specVersion = "1.6";
      identifier = { name = "wcwidth"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wcwidth@solidsnack.be ";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/width/";
      url = "";
      synopsis = "Native wcwidth.";
      description = "Bindings for your system's native wcwidth and a command line tool to examine\nthe widths assigned by it. The command line tool can compile a width table\nto Haskell code that assigns widths to the Char type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "wcwidth-tools" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestringparser-temporary" or (errorHandler.buildDepError "bytestringparser-temporary"))
            ];
          buildable = true;
          };
        };
      };
    }