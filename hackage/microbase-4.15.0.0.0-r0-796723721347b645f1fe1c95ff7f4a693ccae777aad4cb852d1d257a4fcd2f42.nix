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
      identifier = { name = "microbase"; version = "4.15.0.0.0"; };
      license = "MIT";
      copyright = "2021 Sodality";
      maintainer = "dai@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/daig/microbase#readme";
      url = "";
      synopsis = "A minimal base to work around GHC bugs.";
      description = "This package is a hyper-minimal version of base-noprelude. It merely reexports some hardwired modules needed downstream while hiding most things. For example, ghcid will not work without @base:System.IO@. It also reexports all the \"magic\" classes that work with stock deriving. Ideally this package wouldn't be needed because @ghc-prim@ would contain everything hardwired, and base would be replaceable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }