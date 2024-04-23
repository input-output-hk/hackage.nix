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
      specVersion = "2.2";
      identifier = { name = "ghc-byteorder"; version = "4.11.0.0.10"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "\"GHC.ByteOrder\" API Compatibility Layer";
      description = "This package transparently supplies the \"GHC.ByteOrder\" API as provided in @base-4.11.0.0@ for legacy GHC releases which didn't provide it yet (i.e. GHC 7.0 through GHC 8.2).\n\nThis release reexports [GHC.ByteOrder from base](https://hackage.haskell.org/package/base-4.11.1.0/docs/GHC-ByteOrder.html) via Cabal's @reexported-modules@ mechanism.  For GHC 8.2 and earlier a different release of @ghc-byteorder@ (with the same minor version) is eligible by the Cabal solver with a backported \"GHC.ByteOrder\" module.\n\nIn order to use this compatibility layer, simply declare a dependency on @ghc-byteorder@ in your @.cabal@ package description like so\n\n> build-depends: ghc-byteorder ^>= 4.11.0.0\n\nAnd your code will be able to access this respective API version of the module via the usual\n\n> import GHC.ByteOrder\n\nmechanism.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
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