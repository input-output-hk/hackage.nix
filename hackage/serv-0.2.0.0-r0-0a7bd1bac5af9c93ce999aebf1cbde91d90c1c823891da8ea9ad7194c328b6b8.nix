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
      identifier = { name = "serv"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson <me@jspha.com>";
      homepage = "http://github.com/tel/serv#readme";
      url = "";
      synopsis = "Dependently typed API framework";
      description = "Types and kinds for describing APIs.\n\nThis package defines the kind 'Serv.Api.Api' which classifies types which\nstatically describe an API. Define your 'Serv.Api.Api'-kinded types and then\nwrite/derive compliant servers, clients, and documentation all statically\nguaranteed to match.\n\nImport \"Serv.Api.Prelude\" for the smoothest experience defining these types.\n\nSee the README for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-kinder" or (errorHandler.buildDepError "http-kinder"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }