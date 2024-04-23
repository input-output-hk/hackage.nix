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
      identifier = { name = "crdt-event-fold"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "2020 Owens Murray, LLC.";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/crdt-event-fold";
      url = "";
      synopsis = "Garbage collected event folding CRDT.";
      description = "Garbage collected event folding CRDT. Consistently\napply arbitrary operations to replicated data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
        ];
        buildable = true;
      };
    };
  }