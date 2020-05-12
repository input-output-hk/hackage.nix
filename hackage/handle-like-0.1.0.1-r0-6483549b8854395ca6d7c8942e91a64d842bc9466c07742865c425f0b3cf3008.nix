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
      identifier = { name = "handle-like"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "HandleLike class";
      description = "A tiny package. It's contain the following class.\n\n> class HandleLike h where\n>     type HandleMonad h\n>     type DebugLevel h\n>     hlPut :: h -> ByteString -> HandleMonad h ()\n>     hlGet :: h -> Int -> HandleMonad h ByteString\n>     hlGetByte :: h -> HandleMonad h Word8\n>     hlGetLine :: h -> HandleMonad h ByteString\n>     hlGetContent :: h -> HandleMonad h ByteString\n>     hlFlush :: h -> HandleMonad h ()\n>     hlClose :: h -> HandleMonad h ()\n>     hlDebug :: h -> DebugLevel h -> HandleMonad h ()\n>     hlError :: h -> ByteString -> HandleMonad h a\n\nMinimal complete difinition: HandleMonad, hlPut, hlGet and hlClose.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }