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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "jarfind"; version = "0.1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ekirpichov@gmail.com";
      author = "Eugene Kirpichov";
      homepage = "";
      url = "";
      synopsis = "Tool for searching java classes, members and fields in classfiles and JAR archives";
      description = "Search classfiles and JARs: like, all public 'close' methods in classes with 'Stream' in their name in a JAR.\nMostly for debugging NoSuchMethodError's etc. resulting from an outdated JAR and alike.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "jarf" = {
          depends = [
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }