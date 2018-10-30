{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hs2bf";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xanxys@gmail.com";
      author = "Daiki Handa";
      homepage = "";
      url = "";
      synopsis = "Haskell to Brainfu*k compiler";
      description = "Proof of concept implementation of Haskell to Brainfu*k compiler.\nYou can find examples of compilable codes at http://www.xanxys.net/public/hs2bf-demo/";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hs2bf" = {
          depends  = [
            (hsPkgs.containers)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.haskell-src)
          ];
        };
      };
    };
  }