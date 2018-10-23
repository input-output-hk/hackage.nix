{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "FModExRaw";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "dimitri.sabadie@gmail.com";
      author = "DimitriSabadie";
      homepage = "https://github.com/skypers/hsFModEx";
      url = "";
      synopsis = "The Haskell FModEx raw API.";
      description = "Haskell FModEx raw API. It’s a 1:1 Haskell binding over the famous C API.\nFor now, I use version 0.0.* for uncomplete API binding. The complete API will be released just in time.";
      buildType = "Simple";
    };
    components = {
      "FModExRaw" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."fmodex") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }