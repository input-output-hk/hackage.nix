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
      specVersion = "1.0";
      identifier = { name = "hxweb"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2006, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Minimal webframework using fastcgi, libxml2 and libxslt.";
      description = "Fast template based web-framework using libxslt and fastcgi.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."fastcgi" or (errorHandler.buildDepError "fastcgi"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."libxml" or (errorHandler.buildDepError "libxml"))
          (hsPkgs."xslt" or (errorHandler.buildDepError "xslt"))
        ];
        buildable = true;
      };
    };
  }