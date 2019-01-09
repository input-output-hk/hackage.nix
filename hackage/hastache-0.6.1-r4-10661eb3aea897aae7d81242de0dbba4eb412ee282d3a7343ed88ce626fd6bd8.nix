{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hastache"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "Sergey S Lymar (c) 2011-2014";
      maintainer = "Daniil Frumin <dan at covariant.me>";
      author = "Sergey S Lymar <sergey.lymar@gmail.com>";
      homepage = "http://github.com/lymar/hastache";
      url = "";
      synopsis = "Haskell implementation of Mustache templates";
      description = "Haskell implementation of Mustache templates (<http://mustache.github.com/>).\n\nSee homepage for examples of usage: <http://github.com/lymar/hastache>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.syb)
          (hsPkgs.blaze-builder)
          (hsPkgs.ieee754)
          ];
        };
      exes = {
        "mkReadme" = {
          depends = [
            (hsPkgs.hastache)
            (hsPkgs.process)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.syb)
            (hsPkgs.blaze-builder)
            (hsPkgs.ieee754)
            ];
          };
        };
      tests = {
        "test-hastache" = {
          depends = [
            (hsPkgs.hastache)
            (hsPkgs.base)
            (hsPkgs.directory)
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