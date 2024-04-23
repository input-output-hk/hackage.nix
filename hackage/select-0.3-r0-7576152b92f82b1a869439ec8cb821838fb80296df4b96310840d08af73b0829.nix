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
      identifier = { name = "select"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2012 Gard Spreemann";
      maintainer = "Gard Spreemann <gspreemann@gmail.com>";
      author = "Gard Spreemann";
      homepage = "http://nonempty.org/software/haskell-select";
      url = "";
      synopsis = "Wrap the select(2) POSIX function";
      description = "While tinkering on a project, I frequently found myself\nhaving to make FFI calls to @select(2)@. This package provides an interface to that system call.\nIt also used to expose an STM interface for running @select(2)@ with alternative STM actions,\nbut that functionality was split into the stm-orelse-io package from version 0.3.\n\nChanges in version 0.3:\n\n* Split all STM-related functionality into a separate package, stm-orelse-io, independent\nof select.\n\nTODO:\n\n* Provide a type for @fd_set@ that can be passed to and from C so that we can have a version\nof 'System.Posix.IO.select' that reports /which/ file descriptors are ready, instead of how many.\nIts type will be something like @[Fd] -> [Fd] -> [Fd] -> Timeout -> IO ([Fd], [Fd], [Fd])@.\n\n/NOTE/: I feel I'm occupying prime namespace realestate with a package name\nlike select. I'll happily let myself be chased away if anybody else wants\nto use this package name. Let me know.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }