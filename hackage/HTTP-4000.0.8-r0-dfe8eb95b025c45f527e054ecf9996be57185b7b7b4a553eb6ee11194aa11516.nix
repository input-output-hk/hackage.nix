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
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HTTP"; version = "4000.0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2002, Warrick Gray\nCopyright (c) 2002-2005, Ian Lynagh\nCopyright (c) 2003-2006, Bjorn Bringert\nCopyright (c) 2004, Andre Furtado\nCopyright (c) 2004, Ganesh Sittampalam\nCopyright (c) 2004-2005, Dominic Steinitz\nCopyright 2007 Robin Bate Boerop\nCopyright 2008- Sigbjorn Finne";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "Warrick Gray <warrick.gray@hotmail.com>";
      homepage = "http://projects.haskell.org/http/";
      url = "";
      synopsis = "A library for client-side HTTP";
      description = "A package for sending and receiving HTTP requests and responses, all implemented\nin Haskell (assuming you've already got a network stack to spare, via the 'network'\npackage!) The representation of content of in requests and responses is user-controllable,\nletting you pick a representation that fits your code better (e.g., use @ByteString@s rather\nthan the default Haskell @String@s.) Example uses:\n\n>\n>    do\n>      rsp <- Network.HTTP.simpleHTTP (getRequest \"http://www.haskell.org/\")\n>              -- fetch document and return it (as a 'String'.)\n>      fmap (take 100) (getResponseBody rsp)\n>\n>    do\n>      rsp <- Network.Browser.browse $ do\n>               setAllowRedirects True -- handle HTTP redirects\n>               request $ getRequest \"http://google.com/\"\n>      fmap (take 100) (getResponseBody rsp)\n>\n\nGit repository available at <git://code.galois.com/HTTPbis.git>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (if flags.old-base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ])) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        buildable = true;
        };
      };
    }