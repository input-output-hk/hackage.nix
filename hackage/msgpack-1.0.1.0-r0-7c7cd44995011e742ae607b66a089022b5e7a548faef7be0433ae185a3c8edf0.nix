{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "msgpack"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Hideyuki Tanaka 2009-2015,\n(c) Herbert Valerio Riedel 2019";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Hideyuki Tanaka";
      homepage = "http://msgpack.org/";
      url = "";
      synopsis = "A Haskell implementation of MessagePack";
      description = "A Haskell implementation of the <http://msgpack.org/ MessagePack> data interchange format.\nMessagePack is a binary format which aims to be compact and supports encoding a superset of the <http://json.org/ JSON> data-model.\n\n== Related Packages\n\nA JSON adapter for the <https://hackage.haskell.org/package/aeson aeson> library is provided by the <https://hackage.haskell.org/package/msgpack-aeson msgpack-aeson> package.\n\nThe <http://hackage.haskell.org/package/msgpack-rpc msgpack-rpc> package provides an implementation of the MessagePack-RPC protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.vector)
          (hsPkgs.deepseq)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          ];
        };
      tests = {
        "msgpack-tests" = {
          depends = [
            (hsPkgs.msgpack)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }