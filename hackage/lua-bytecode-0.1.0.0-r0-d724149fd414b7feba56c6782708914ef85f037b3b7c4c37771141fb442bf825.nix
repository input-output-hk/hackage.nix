{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."numeric-extras" or ((hsPkgs.pkgs-errors).buildDepError "numeric-extras"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }