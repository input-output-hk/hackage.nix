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
      specVersion = "1.8";
      identifier = {
        name = "msgpack-idl";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://msgpack.org/";
      url = "";
      synopsis = "An IDL Compiler for MessagePack";
      description = "An IDL Compiler for MessagePack <http://msgpack.org/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.shakespeare-text)
          (hsPkgs.blaze-builder)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.msgpack)
          (hsPkgs.peggy)
        ];
      };
      exes = {
        "mpidl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.cmdargs)
            (hsPkgs.peggy)
            (hsPkgs.msgpack-idl)
          ];
        };
      };
    };
  }