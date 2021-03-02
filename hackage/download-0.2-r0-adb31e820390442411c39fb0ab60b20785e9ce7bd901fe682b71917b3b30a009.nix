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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "download"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/download";
      url = "";
      synopsis = "High-level file download based on URLs";
      description = "High-level file download based on URLs\n\nDownload web content as strict bytestring, strings,\nHTML tags, XML, RSS or Atom feeds or JSON, via HTTP,\nFTP or file protocols, using a URL interface.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }