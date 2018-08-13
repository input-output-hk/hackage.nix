{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "VKHS";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Sergey Mironov";
      maintainer = "ierton@gmail.com";
      author = "Sergey Mironov";
      homepage = "http://github.com/ierton/vkhs";
      url = "";
      synopsis = "Provides access to Vkontakte (popular Russian social network) API";
      description = "Provides access to Vkontakte API methods. Library requires no interaction\nwith user during Implicit-flow authentication.";
      buildType = "Simple";
    };
    components = {
      "VKHS" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.json)
          (hsPkgs.containers)
          (hsPkgs.tagsoup-parsec)
          (hsPkgs.tagsoup)
          (hsPkgs.mtl)
          (hsPkgs.failure)
          (hsPkgs.bytestring)
          (hsPkgs.curlhs)
          (hsPkgs.safe)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.utf8-string)
          (hsPkgs.bimap)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
        ];
      };
    };
  }