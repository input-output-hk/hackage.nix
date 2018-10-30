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
        name = "inserts";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "2014 (c) Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson";
      homepage = "http://github.com/tel/inserts";
      url = "";
      synopsis = "Stupid simple bytestring templates.";
      description = "A template library that has two functions and a type in its API.\n\nSometimes you need a powerful template library which allows for looping and\nconditional evaluation, deserialization from nearly every standard Haskell\ntype, and manipulation of contexts abstractly. In those cases, I suggest\n@hastache@.\n\nSometimes you just need to insert @ByteString@s into other @ByteString@s.\nIn those cases, I suggest this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.dlist)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }