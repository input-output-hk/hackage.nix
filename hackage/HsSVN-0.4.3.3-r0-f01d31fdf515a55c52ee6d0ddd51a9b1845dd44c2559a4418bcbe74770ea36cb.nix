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
      identifier = { name = "HsSVN"; version = "0.4.3.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "https://github.com/phonohawk/HsSVN";
      url = "";
      synopsis = "Partial Subversion (SVN) binding for Haskell";
      description = "\nHsSVN is a partial Subversion (SVN) binding for Haskell. Currently\nit covers the most part of Subversion FS but others are left\nuncovered.\n\nPlease note that you need to pass an extra option to @cabal\nconfigure@ to build HsSVN (assuming you have installed Subversion\nto @\\/usr\\/local@):\n\n> cabal configure --configure-option=\"--with-subversion-prefix=/usr/local\"\n> cabal build\n> cabal install\n\nYou need the following external libraries to be installed:\n\n* apr, apr-util >= 1.3 (<http://apr.apache.org/>)\n\n* subversion >= 1.6 (<http://subversion.apache.org/>)\n";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }