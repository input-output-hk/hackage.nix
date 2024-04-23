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
      identifier = { name = "rfc3339"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Hugo Daniel Gomes";
      maintainer = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
      author = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parse and display time according to RFC3339";
      description = "\nParse and display time according to RFC3339:\n<http://www.ietf.org/rfc/rfc3339.txt>\n\nThis package defines a type class to parse and read RFC 3339 from different\ndata types.\nRight now there is only support for reading and showing String\n\nFor more information and usage examples please read the documentation of\nthe module here: <http://hackage.haskell.org/packages/archive/rfc3339/1.0.4/doc/html/Data-Time-RFC3339.html>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
        ];
        buildable = true;
      };
    };
  }