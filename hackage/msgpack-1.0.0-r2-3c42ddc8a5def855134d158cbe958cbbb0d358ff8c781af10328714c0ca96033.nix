{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "msgpack"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2015, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://msgpack.org/";
      url = "";
      synopsis = "A Haskell implementation of MessagePack";
      description = "A Haskell implementation of MessagePack <http://msgpack.org/>";
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
          (hsPkgs.blaze-builder)
          (hsPkgs.deepseq)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          ];
        };
      tests = {
        "msgpack-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.msgpack)
            ];
          };
        };
      };
    }