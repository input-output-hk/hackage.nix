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
      identifier = { name = "servant-hateoas"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2024 Julian Bruder";
      maintainer = "julian.bruder@outlook.com";
      author = "Julian Bruder";
      homepage = "https://github.com/bruderj15/servant-hateoas";
      url = "";
      synopsis = "HATEOAS extension for servant";
      description = "Create Resource-Representations for your types and make your API HATEOAS-compliant.\nAutomatically derive a HATEOAS-API and server-implementation from your API or straight up define a HATEOAS-API yourself.\nCurrently HAL+JSON is the only supported Content-Type. Work for further is on progress.\nFor now only basic hypermedia-link derivations such as the self-link are automatically generated.\nExpect more sophisticated link-derivation e.g. for paging in the future.\nThis library is highly experimental and subject to change.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."singleton-bool" or (errorHandler.buildDepError "singleton-bool"))
          (hsPkgs."constrained-some" or (errorHandler.buildDepError "constrained-some"))
        ];
        buildable = true;
      };
      tests = {
        "servant-hateoas-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-hateoas" or (errorHandler.buildDepError "servant-hateoas"))
          ];
          buildable = true;
        };
      };
    };
  }