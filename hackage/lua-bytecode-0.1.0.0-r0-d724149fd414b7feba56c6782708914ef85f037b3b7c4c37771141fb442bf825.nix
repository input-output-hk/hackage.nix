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
      identifier = { name = "lua-bytecode"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Jeff Shaw          2013";
      maintainer = "shawjef3@gmail.com";
      author = "Jeff Shaw";
      homepage = "";
      url = "";
      synopsis = "Library for loading Lua bytecode.";
      description = "You can use this library to load LUA bytecode into its logical structure. Currently LUA 5.1 is supported.\n\n> import System.Environment\n> import Lua.Bytecode5_1.Chunk\n> import Lua.Bytecode5_1.Types\n> import Lua.Bytecode5_1.Header\n> import qualified Data.ByteString as BS\n> import Text.Show.Pretty\n>\n> main = do\n> \targs <- getArgs\n> \tb <- BS.readFile \$ args !! 0\n> \tlet f = runLuaGet b :: Either String Function\n> \tputStrLn \$ ppShow f";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."numeric-extras" or (errorHandler.buildDepError "numeric-extras"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }