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
        name = "paprika";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Takamasa Mitsuji";
      maintainer = "tkms@mitsuji.org";
      author = "Takamasa Mitsuji";
      homepage = "https://github.com/mitsuji/paprika#readme";
      url = "";
      synopsis = "The Haskell library and examples for the kids programming robot paprika";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.huckleberry)
        ];
      };
      exes = {
        "paprika-console-ctrl-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.paprika)
          ];
        };
        "paprika-wai-ctrl-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.paprika)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-inmemory)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.http-types)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-websockets)
            (hsPkgs.websockets)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.word8)
            (hsPkgs.binary)
            (hsPkgs.aeson)
          ];
        };
        "paprika-wai-cutter-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.paprika)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-inmemory)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.http-types)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-websockets)
            (hsPkgs.websockets)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.word8)
            (hsPkgs.binary)
            (hsPkgs.aeson)
          ];
        };
      };
    };
  }