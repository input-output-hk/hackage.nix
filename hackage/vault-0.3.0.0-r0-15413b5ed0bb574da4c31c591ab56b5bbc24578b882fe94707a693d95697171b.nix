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
      specVersion = "1.6";
      identifier = { name = "vault"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Heinrich Apfelmus 2011-2013";
      maintainer = "Heinrich Apfelmus <apfelmus at quantentunnel de>";
      author = "Heinrich Apfelmus, Elliott Hird";
      homepage = "https://github.com/HeinrichApfelmus/vault";
      url = "";
      synopsis = "a persistent store for values of arbitrary types";
      description = "A /vault/ is a persistent store for values of arbitrary types.\nIt's like having first-class access to the storage space behind IORefs.\n\nThe data structure is analogous to a bank vault,\nwhere you can access different bank boxes with different keys;\nhence the name.\n\nAlso provided is a /locker/ type, representing a store for a single element.\n\nChangelog:\n\n* 0.3.0.0 Split modules into Lazy and Strict variants, no default choice.\nAdd Hashable instance to Data.Unique.Really for all implementations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }