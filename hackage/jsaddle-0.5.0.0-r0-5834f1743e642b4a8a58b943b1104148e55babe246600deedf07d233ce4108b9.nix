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
      specVersion = "1.10";
      identifier = {
        name = "jsaddle";
        version = "0.5.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "High level interface for webkit-javascriptcore";
      description = "This package provides an EDSL for calling JavaScript code using\nthe JavaScriptCore engine and low level Haskell bindings\nin the webkit-javascriptcore library <https://github.com/ghcjs/webkit-javascriptcore>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs.ghcjs-base)
            (hsPkgs.ghcjs-prim)
          ]
          else [
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
          ]);
      };
      tests = {
        "test-tool" = {
          depends  = [
            (hsPkgs.base)
          ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.jsaddle)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }