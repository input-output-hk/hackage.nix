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
        name = "apiary-purescript";
        version = "0.17.1";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "purescript compiler for apiary web framework.";
      description = "example: <https://github.com/philopon/apiary/blob/master/examples/pureScript.hs>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.apiary)
          (hsPkgs.purescript)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
          (hsPkgs.parsec)
          (hsPkgs.Glob)
          (hsPkgs.data-default-class)
        ];
      };
    };
  }