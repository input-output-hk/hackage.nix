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
      specVersion = "1.6";
      identifier = {
        name = "language-java-classfile";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gergő Érdi <gergo@erdi.hu>";
      author = "Gergő Érdi <http://gergo.erdi.hu/>";
      homepage = "";
      url = "";
      synopsis = "Parser for Java .class files";
      description = "Parses compiled Java .class files into the syntax tree\nof the language-java package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.language-java)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.data-flags)
          (hsPkgs.array)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.binary)
          (hsPkgs.LibZip)
        ];
      };
    };
  }