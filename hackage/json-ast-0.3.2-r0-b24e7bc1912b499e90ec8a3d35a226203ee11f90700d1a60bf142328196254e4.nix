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
      identifier = { name = "json-ast"; version = "0.3.2"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/json-ast ";
      url = "";
      synopsis = "Universal JSON AST datastructure";
      description = "This library provides only a data-type representing the JSON value tree.\nIt is intended to be used as a shared data-type by all kinds of JSON libraries.\nSame as we have the \\\"xml-types\\\" package for libraries dealing with XML.\n\nNow, since the \\\"aeson\\\" @Value@ has been serving this purpose for years,\nwe've intentionally made this type representationally identical to it,\nmaking it possible to convert between them at 0 runtime cost.\nThis means that we can use those types interchangeably,\nmaking it possible to gradually migrate.\n\n===Why displace the \\\"aeson\\\" @Value@?\n\n1. To boost the competition between JSON libraries.\nInstead of nudging the community to implement its ideas by patching \\\"aeson\\\".\nAfter all, competition is the driving force of evolution and hence progress.\n\n2. Due to so much patching already happening to \\\"aeson\\\",\nits loss of focus, some questionable design and\nstrive for backwards compatibility, it's becoming bloated.\nIOW, it's trying to be \"everything JSON\" but with no careful design or plan and\nit's tied by its past.\nWith these restrictions it's impossible for \\\"aeson\\\" to ever become a polished\nlibrary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }