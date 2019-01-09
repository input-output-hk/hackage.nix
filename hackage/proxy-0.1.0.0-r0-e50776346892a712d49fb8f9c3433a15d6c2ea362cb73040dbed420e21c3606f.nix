{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "proxy"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2018 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/proxy.git";
      url = "";
      synopsis = "proxy helpers";
      description = "This module contains a bunch of pre-defined proxies\nso that users don't /always/ have to write @(Proxy :: Proxy Word8)@,\netc. It is recommended that you import this module qualified to avoid\nnaming conflicts.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }