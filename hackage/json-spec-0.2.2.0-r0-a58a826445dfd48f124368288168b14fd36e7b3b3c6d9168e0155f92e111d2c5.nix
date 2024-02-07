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
      identifier = { name = "json-spec"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/json-spec";
      url = "";
      synopsis = "Type-level JSON specification";
      description = "= Motivation\nThis package provides a way to specify the shape of\nyour JSON data at the type level. The particular use\ncases we focus on are enabling (but not providing\nin this package):\n\n1. Auto-generating documentation to ensure it\n   is correct.\n2. Auto-generating client code in front-end languages\n   to ensure it is correct.\n\nThere are already tools available to achieve this,\nbut they all have one major drawback: they rely on\ngenerically derived Aeson instances. Some people\nstrongly object to using generically derived Aeson\ninstances for encoding/decoding http api data because\nof how brittle it is. It can be surprisingly easy\naccidentally break your API without noticing because\nyou don't realize that a small change to some type\nsomewhere affects the API representation. Avoiding\nthis requires very strict discipline about how you\norganize and maintain your code. E.g. you will see\na lot of comments like\n\n> --| BEWARE, Changing any of the types in this file will change the API\n> -- representation!!\n> module My.API (...) where\n\nBut then the types in this api might reference\ntypes in in other modules where it isn't as obvious\nthat you might be changing the api when you make\nan update.\n\nI have even seen people go so far as to mandate\nthat /every/ type appearing on the API must be\nin some similar \\\"API\\\" module. This usually ends\nbadly because you end up with a bunch of seemingly\nspurious (and quite tedious) translations between\nbetween \\\"business\\\" types and almost identical\n\\\"API\\\" types.\n\nThe other option is to simply not use generically\nderived instances and code all or some of your\n'ToJSON'/'FromJSON' instances by hand. That\n(sometimes) helps solve the problem of making it a\nlittle more obvious when you are making a breaking\napi change. And it definitely helps with the ability\nto update the haskell type for some business purpose\nwhile keeping the encoding backwards compatible.\n\nThe problem now though is that you can't take\nadvantage of any of the above tooling without\nwriting every instance by hand. Writing all the\nindividual instances by hand defeat's the purpose\nbecause you are back to being unsure whether they\nare all in sync!\n\nThe approach this library takes is to take a cue\nfrom `servant` and provide a way to specify the\nJSON encoding at the type level. You must manually\nspecify the encoding, but you only have to do so\nonce (at the type level). Other tools can then\ninspect the type using either type families or\ntype classes to generate the appropriate artifacts\nor behavior. Aeson integration (provided by this\npackage) works by using a type family to transform\nthe spec into a new Haskell type whose structure\nis analogous to the specification. You are then\nrequired to transform your regular business\nvalue into a value of this \\\"structural type\\\"\n(I strongly recommend using type holes to make this\neasier). Values of the structural type will always\nencode into specification-complient JSON.\n\n= Example\n\n> data User = User\n>   { name :: Text\n>   , lastLogin :: UTCTime\n>   }\n>   deriving stock (Show, Eq)\n>   deriving (ToJSON, FromJSON) via (SpecJSON User)\n> instance HasJsonEncodingSpec User where\n>   type EncodingSpec User =\n>     JsonObject\n>       '[ '(\"name\", JsonString)\n>        , '(\"last-login\", JsonDateTime)\n>        ]\n>   toJSONStructure user =\n>     (Field @\"name\" (name user),\n>     (Field @\"last-login\" (lastLogin user),\n>     ()))\n> instance HasJsonDecodingSpec User where\n>   type DecodingSpec User = EncodingSpec User\n>   fromJSONStructure\n>       (Field @\"name\" name,\n>       (Field @\"last-login\" lastLogin,\n>       ()))\n>     =\n>       pure User { name , lastLogin }";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "jsonspec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."json-spec" or (errorHandler.buildDepError "json-spec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }