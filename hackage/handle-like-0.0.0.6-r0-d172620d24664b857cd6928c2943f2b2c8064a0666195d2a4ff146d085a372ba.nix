{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "handle-like";
        version = "0.0.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "HandleLike class";
      description = "A tiny package. It's contain the following class.\n\n> class HandleLike h where\n>     type HandleMonad h\n>     hlPut :: h -> ByteString -> HandleMonad h ()\n>     hlGet :: h -> Int -> HandleMonad h ByteString\n>     hlGetByte :: h -> HandleMonad h Word8\n>     hlGetLine :: h -> HandleMonad h ByteString\n>     hlGetContent :: h -> HandleMonad h ByteString\n>     hlClose :: h -> HandleMonad h ()\n>     hlError :: h -> ByteString -> HandleMonad h a\n\nMinimal complete difinition: hlPut, hlGet and hlClose.";
      buildType = "Simple";
    };
    components = {
      "handle-like" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }