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
    flags = { examples = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hsSqlite3"; version = "0.0.5.20081031"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Evgeny Jukov";
      homepage = "http://code.haskell.org/hsSqlite3";
      url = "";
      synopsis = "sqlite3 bindings";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        pkgconfig = [
          (pkgconfPkgs."sqlite3" or (errorHandler.pkgConfDepError "sqlite3"))
        ];
        buildable = true;
      };
      exes = { "5minutes" = { buildable = false; }; };
    };
  }