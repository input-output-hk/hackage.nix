{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "GuiHaskell";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/guihaskell/";
      url = "";
      synopsis = "A graphical REPL and development environment for Haskell";
      description = "GuiHaskell aims to be a cross-platform development environment\nfor Haskell that is integrated with other popular Haskell tools.\nThe program uses the PropLang GUI combinator library to declaratively\ndefine the relationships between UI elements and data.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "guihaskell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.proplang)
            (hsPkgs.gtk)
            (hsPkgs.glade)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }