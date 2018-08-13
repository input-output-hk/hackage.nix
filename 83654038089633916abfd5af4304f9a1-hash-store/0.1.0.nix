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
      specVersion = "2.0";
      identifier = {
        name = "hash-store";
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik, Vladislav Zavialov";
      homepage = "https://github.com/kowainik/hash-store";
      url = "";
      synopsis = "Hash as cache";
      description = "Hash as cache";
      buildType = "Simple";
    };
    components = {
      "hash-store" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.blake2)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
    };
  }