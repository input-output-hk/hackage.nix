{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "handle-like"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "HandleLike class";
      description = "A tiny package. It's contain the following class.\n\n> class HandleLike h where\n>     hlPut :: h -> ByteString -> IO ()\n>     hlGet :: h -> Int -> IO ByteString\n>     hlGetByte :: h -> IO Word8\n>     hlGetLine :: h -> IO ByteString\n>     hlGetContent :: h -> IO ByteString\n>     hlClose :: h -> IO ()";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      };
    }