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
      specVersion = "1.2";
      identifier = { name = "stm-orelse-io"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2012 Gard Spreemann";
      maintainer = "Gard Spreemann <gspreemann@gmail.com>";
      author = "Gard Spreemann";
      homepage = "http://nonempty.org/software/stm-orelse-io";
      url = "";
      synopsis = "Choose between the return value of an STM operation and an IO action.";
      description = "While tinkering on a project, I frequently found myself\nwanting to wait for an IO operation /unless/ something\nmore important came up. The \"Control.Concurrent.STM.OrElseIO\"\nmodule is meant to reduce the boilerplate needed when choosing\nbetween IO actions and STM operations.\n\nYou must use the threaded runtime with this package.\n\nTODO:\n\n* Kill off IO threads whose return values will never be needed.\n\n* Possibly rename @runOrElse@ and friends to @orElseIO@ or similar.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }