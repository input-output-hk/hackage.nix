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
    flags = { tests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "roundtrip-xml"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stefan Wehr <wehr@factisresearch.com>,";
      author = "Stefan Wehr <wehr@factisresearch.com>,\nDavid Leuschner <leuschner@factisresearch.com>";
      homepage = "";
      url = "";
      synopsis = "Bidirectional (de-)serialization for XML.";
      description = "Roundtrip allows the definition of bidirectional\n(de-)serialization specifications. This package provides\nconcrete implementations of these specifications\nfor the serialization format XML. See the roundtrip\npackage for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."xml-enumerator" or (errorHandler.buildDepError "xml-enumerator"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-enumerator" or (errorHandler.buildDepError "blaze-builder-enumerator"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."reference" or (errorHandler.buildDepError "reference"))
          (hsPkgs."roundtrip" or (errorHandler.buildDepError "roundtrip"))
          (hsPkgs."roundtrip-string" or (errorHandler.buildDepError "roundtrip-string"))
          ];
        buildable = true;
        };
      exes = {
        "tests" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."roundtrip" or (errorHandler.buildDepError "roundtrip"))
            (hsPkgs."roundtrip-string" or (errorHandler.buildDepError "roundtrip-string"))
            (hsPkgs."roundtrip-xml" or (errorHandler.buildDepError "roundtrip-xml"))
            (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
            (hsPkgs."xml-enumerator" or (errorHandler.buildDepError "xml-enumerator"))
            (hsPkgs."reference" or (errorHandler.buildDepError "reference"))
            ];
          buildable = if flags.tests then true else false;
          };
        };
      };
    }