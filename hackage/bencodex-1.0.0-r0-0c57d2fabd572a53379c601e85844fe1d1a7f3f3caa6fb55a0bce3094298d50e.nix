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
      specVersion = "2.2";
      identifier = {
        name = "bencodex";
        version = "1.0.0";
      };
      license = "GPL-3.0-or-later";
      copyright = "© 2018 Hong Minhee";
      maintainer = "Hong Minhee <hong.minhee@gmail.com>";
      author = "Hong Minhee <hong.minhee@gmail.com>";
      homepage = "https://github.com/dahlia/bencodex-haskell#readme";
      url = "";
      synopsis = "Bencodex reader/writer for Haskell";
      description = "Please see the README on GitHub at <https://github.com/dahlia/bencodex-haskell#readme>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hlint)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.HsYAML)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bencodex)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.hspec-discover)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }