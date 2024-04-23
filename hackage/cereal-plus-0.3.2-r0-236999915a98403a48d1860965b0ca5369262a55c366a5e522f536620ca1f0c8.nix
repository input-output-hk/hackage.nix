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
      specVersion = "1.10";
      identifier = { name = "cereal-plus"; version = "0.3.2"; };
      license = "MIT";
      copyright = "(c) 2013, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/cereal-plus ";
      url = "";
      synopsis = "An extended serialization library on top of \"cereal\"";
      description = "Provides non-orphan instances for an extended range of types,\ntransformer types and support for mutable data,\nwhile reapproaching the naming conventions of \\\"cereal\\\" library.\nFor a streaming frontend over this library see\n<http://hackage.haskell.org/package/pipes-cereal-plus \"pipes-cereal-plus\">";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."layers" or (errorHandler.buildDepError "layers"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }