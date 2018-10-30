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
        name = "hpdft";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "k16.shikano@gmail.com";
      author = "k16.shikano";
      homepage = "https://github.com/k16shikano/hpdft";
      url = "";
      synopsis = "tools to poke pdf using haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.zlib)
          (hsPkgs.utf8-string)
          (hsPkgs.directory)
        ];
      };
    };
  }