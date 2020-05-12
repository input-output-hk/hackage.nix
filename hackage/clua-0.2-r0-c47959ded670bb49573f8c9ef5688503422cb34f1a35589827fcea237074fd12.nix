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
      specVersion = "1.2";
      identifier = { name = "clua"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom@zwizwa.be";
      author = "Tom Schouten";
      homepage = "http://zwizwa.be/-/meta";
      url = "";
      synopsis = "C to Lua data wrapper generator";
      description = "Gather enums and packed struct definitions from a C file\nand generate a Lua table that can be used in conjunction\nwith parse-bin.lua to convert between Lua tables and\nbinary data.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "clua" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }