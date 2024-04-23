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
      specVersion = "1.12";
      identifier = { name = "ghc-byteorder"; version = "4.11.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "\"GHC.ByteOrder\" API Compatibility Layer";
      description = "This package transparently supplies the \"GHC.ByteOrder\" API as provided in @base-4.11.0.0@ for legacy GHC releases which didn't provide it yet (i.e. GHC 7.0 through GHC 8.2).\n\nThis release provides a backported \"GHC.ByteOrder\" module. For GHC 8.4 and later a different release of @ghc-byteorder@ (with the same minor version) is eligible by the Cabal solver which reexports \"GHC.ByteOrder\" from @base@ via Cabal's @reexported-modules@ mechanism.\n\nIn order to use this compatibility layer, simply declare a dependency on @ghc-byteorder@ in your @.cabal@ package description like so\n\n> build-depends: ghc-byteorder ^>= 4.11.0.0\n\nAnd your code will be able to access this respective API version of the module via the usual\n\n> import GHC.ByteOrder\n\nmechanism.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && true || compiler.isGhcjs && true)) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs."base" or (errorHandler.buildDepError "base"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-byteorder" or (errorHandler.buildDepError "ghc-byteorder"))
          ];
          buildable = true;
        };
      };
    };
  }