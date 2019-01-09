{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "language-java-classfile"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dr. ERDI Gergo <gergo@erdi.hu>";
      author = "Dr. ERDI Gergo <http://gergo.erdi.hu/>";
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
          (hsPkgs.mtl)
          (hsPkgs.data-flags)
          (hsPkgs.array)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.binary)
          ];
        };
      };
    }