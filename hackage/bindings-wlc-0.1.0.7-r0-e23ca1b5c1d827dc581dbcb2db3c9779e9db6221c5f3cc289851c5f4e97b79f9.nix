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
      identifier = { name = "bindings-wlc"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "2016 Ashley Towns";
      maintainer = "mail@ashleytowns.id.au";
      author = "Ashley Towns";
      homepage = "http://github.com/aktowns/bindings-wlc#readme";
      url = "";
      synopsis = "Bindings against the wlc library";
      description = "Please see Readme.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          ];
        libs = [ (pkgs."wlc" or (errorHandler.sysDepError "wlc")) ];
        buildable = true;
        };
      tests = {
        "bindings-wlc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bindings-wlc" or (errorHandler.buildDepError "bindings-wlc"))
            ];
          buildable = true;
          };
        };
      };
    }