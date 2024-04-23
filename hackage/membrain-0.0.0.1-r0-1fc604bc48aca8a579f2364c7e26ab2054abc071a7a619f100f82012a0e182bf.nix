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
      specVersion = "2.4";
      identifier = { name = "membrain"; version = "0.0.0.1"; };
      license = "MPL-2.0";
      copyright = "2018-2020 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/membrain";
      url = "";
      synopsis = "Type-safe memory units";
      description = "@membrain@ provides @newtype@ wrapper for type-safe work with memory units\n\n@\n__newtype__ Memory (mem :: Nat) = Memory\n\\    { unMemory :: Natural\n\\    }\n@\n\nThis data type stores memory unit value phantom type parameter which is\nrepresented as type-level natural number.\nThe ideas behind this package are described in the following blog post:\n\n* [Insane in the Membrain](https://kowainik.github.io/posts/membrain)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "membrain-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."membrain" or (errorHandler.buildDepError "membrain"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          ];
          buildable = true;
        };
      };
    };
  }