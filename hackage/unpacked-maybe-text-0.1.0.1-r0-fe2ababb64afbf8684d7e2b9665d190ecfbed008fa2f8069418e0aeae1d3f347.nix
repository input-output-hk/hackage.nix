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
      identifier = { name = "unpacked-maybe-text"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/unpacked-maybe-text";
      url = "";
      synopsis = "optional text that unpacks well";
      description = "This library provides a specialization of `Maybe ShortText`.\nWhen this is an unpacked field of data constructor, this will\nresult in fewer indirections and fewer allocations. This is\na micro-optimization, so think hard about whether or not this\nwill improve performance in a particular situation. A different\nway to accomplish a similar goal is to forbid empty text and then\nuse the empty text value as a placeholder that signifies `Nothing`.\nThis alternative may or may not be an option depending on whether\nor not the empty string is valid in your problem domain.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
        ];
        buildable = true;
      };
    };
  }