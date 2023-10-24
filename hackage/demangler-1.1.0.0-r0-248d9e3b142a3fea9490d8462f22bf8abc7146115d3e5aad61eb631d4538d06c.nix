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
    flags = { debug = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "demangler"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kquick@galois.com";
      author = "Galois, Inc.";
      homepage = "";
      url = "";
      synopsis = "Demangler for C++ mangled names.";
      description = "Provides a demangler (and mangler) for C++ names, with an intermediate\nrepresentation that captures the nuances of each composite name to allow\nfor semantic utilization of different portions of a name.\n.\nAlso provides text sharing for efficient storage of a large number of\ndemangled names.\n.\nSee https://itanium-cxx-abi.github.io/cxx-abi/abi.html#mangling for more\ndetails on mangling";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."sayable" or (errorHandler.buildDepError "sayable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.debug) (hsPkgs."panic" or (errorHandler.buildDepError "panic"));
        buildable = true;
        };
      exes = {
        "demangle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."demangler" or (errorHandler.buildDepError "demangler"))
            (hsPkgs."sayable" or (errorHandler.buildDepError "sayable"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "demangler-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."demangler" or (errorHandler.buildDepError "demangler"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."sayable" or (errorHandler.buildDepError "sayable"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }