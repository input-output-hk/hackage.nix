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
      identifier = { name = "rerebase"; version = "1.20.1.1"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/rerebase ";
      url = "";
      synopsis = "Reexports from \"base\" with a bunch of other standard libraries";
      description = "A rich drop-in replacement for \\\"base\\\".\nFor details and docs please visit\n<https://github.com/nikita-volkov/rerebase the project's GitHub page>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."rebase" or (errorHandler.buildDepError "rebase"))
        ];
        buildable = true;
      };
    };
  }