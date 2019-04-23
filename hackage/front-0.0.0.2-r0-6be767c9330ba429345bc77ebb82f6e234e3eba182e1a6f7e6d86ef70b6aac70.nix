{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "front"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "persiantiger@yandex.ru";
      author = "Andrey Prokopenko";
      homepage = "haskell-front.org";
      url = "";
      synopsis = "A reactive frontend web framework";
      description = "A reactive frontend web framework. See haskell-front.org for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.stm)
          (hsPkgs.stm-lifted)
          (hsPkgs.conduit)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.fay)
          (hsPkgs.fay-dom)
          (hsPkgs.fay-websockets)
          (hsPkgs.websockets)
          ];
        };
      exes = {
        "todo-servant-example" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.conduit)
            (hsPkgs.async)
            (hsPkgs.websockets)
            (hsPkgs.wai-websockets)
            (hsPkgs.unordered-containers)
            (hsPkgs.stm)
            (hsPkgs.random)
            (hsPkgs.stm-lifted)
            (hsPkgs.fay)
            (hsPkgs.base-compat)
            (hsPkgs.base64-bytestring)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.servant)
            (hsPkgs.servant-auth-cookie)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.front)
            ];
          };
        "todo-yesod-example" = {
          depends = (pkgs.lib).optionals (!(!flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.front)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.fay)
            (hsPkgs.random)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-websockets)
            (hsPkgs.conduit)
            (hsPkgs.aeson)
            (hsPkgs.stm-lifted)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }