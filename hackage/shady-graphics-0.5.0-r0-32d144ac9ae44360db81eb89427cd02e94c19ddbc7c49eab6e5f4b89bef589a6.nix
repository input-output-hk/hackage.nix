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
      identifier = { name = "shady-graphics"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) by Conal Elliott 2009-2011";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/shady";
      url = "http://conal.net/repos/shady-graphics";
      synopsis = "Functional GPU programming - DSEL & compiler";
      description = "Compile functional specifications for GPU execution.\nSee also shady-render, shady-tv, and shady-examples\n\nCopyright 2009-2011 by Conal Elliott; GNU AGPLv3 license (see COPYING).\nThis license is a place-holder.  Let me know if you'd like other terms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          (hsPkgs."applicative-numbers" or (errorHandler.buildDepError "applicative-numbers"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
          (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
          (hsPkgs."ty" or (errorHandler.buildDepError "ty"))
          (hsPkgs."data-treify" or (errorHandler.buildDepError "data-treify"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."shady-gen" or (errorHandler.buildDepError "shady-gen"))
        ];
        buildable = true;
      };
    };
  }