{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tagsoup-megaparsec";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "https://github.com/kseo/tagsoup-megaparsec#readme";
      url = "";
      synopsis = "A Tag token parser and Tag specific parsing combinators";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.megaparsec)
          (hsPkgs.tagsoup)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "tagsoup-megaparsec-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.megaparsec)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.tagsoup)
            (hsPkgs.tagsoup-megaparsec)
          ];
        };
      };
    };
  }