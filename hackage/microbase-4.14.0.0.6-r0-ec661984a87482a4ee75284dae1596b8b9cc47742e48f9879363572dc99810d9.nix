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
      specVersion = "2.4";
      identifier = { name = "microbase"; version = "4.14.0.0.6"; };
      license = "MIT";
      copyright = "2020 Sodality";
      maintainer = "dai@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/daig/microbase";
      url = "";
      synopsis = "A minimal base to work around GHC bugs.";
      description = "This package is a hyper-minimal version of base-noprelude:\nIt merely reexports some hardwired modules needed downstream while hiding most things.\nFor example, ghcid will not work without @base:System.IO@.\nIt also reexports all the \"magic\" classes that work with stock deriving.\nIdeally this package wouldn't be needed because @ghc-prim@ would contain everything hardwired,\nand base would just be an optional standard library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }