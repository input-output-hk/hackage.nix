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
      specVersion = "3.0";
      identifier = { name = "json-spec-openapi"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2022 Rick Owens";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/json-spec-openapi";
      url = "";
      synopsis = "json-spec-openapi";
      description = "This package provides a way to produce\n[`openapi3`](https://hackage.haskell.org/package/openapi3) documentation from a\n[`json-spec`](https://hackage.haskell.org/package/json-spec-0.1.0.0)\nspecification.\n\n= Example\n\nGiven this data type:\n\n> data User = User\n>   {      name :: Text\n>   , lastLogin :: UTCTime\n>   }\n>   deriving ToSchema via (EncodingSchema User) -- <-- ToSchema instance defined here\n> instance HasJsonEncodingSpec User where\n>   type EncodingSpec User =\n>     JsonObject\n>       '[ '(\"name\", JsonString)\n>        , '(\"last-login\", JsonDateTime)\n>        ]\n>   toJSONStructure user =\n>     (Field @\"name\" (name user),\n>     (Field @\"last-login\" (lastLogin user),\n>     ()))\n\nCalling `Data.Aeson.encode (Data.OpenApi3.toSchema (Proxy :: Proxy User))`\nwill produce the following Schema:\n\n> {\n>   \"additionalProperties\": false,\n>   \"properties\": {\n>     \"last-login\": {\n>       \"format\": \"date-time\",\n>       \"type\": \"string\"\n>     },\n>     \"name\": {\n>       \"type\": \"string\"\n>     }\n>   },\n>   \"required\": [\n>     \"name\",\n>     \"last-login\"\n>   ],\n>   \"type\": \"object\"\n> }";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json-spec" or (errorHandler.buildDepError "json-spec"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "json-spec-openapi-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."json-spec" or (errorHandler.buildDepError "json-spec"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."json-spec-openapi" or (errorHandler.buildDepError "json-spec-openapi"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }