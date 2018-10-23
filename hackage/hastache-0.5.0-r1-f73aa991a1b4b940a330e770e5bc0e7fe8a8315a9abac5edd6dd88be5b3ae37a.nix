{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hastache";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "Sergey S Lymar (c) 2011-2013";
      maintainer = "Sergey S Lymar <sergey.lymar@gmail.com>";
      author = "Sergey S Lymar <sergey.lymar@gmail.com>";
      homepage = "http://github.com/lymar/hastache";
      url = "";
      synopsis = "Haskell implementation of Mustache templates";
      description = "Haskell implementation of Mustache templates (<http://mustache.github.com/>).\n\nSee homepage for examples of usage: <http://github.com/lymar/hastache>";
      buildType = "Simple";
    };
    components = {
      "hastache" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.syb)
          (hsPkgs.blaze-builder)
          (hsPkgs.ieee754)
        ];
      };
      tests = {
        "test-hastache" = {
          depends  = [
            (hsPkgs.hastache)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.syb)
          ];
        };
      };
    };
  }