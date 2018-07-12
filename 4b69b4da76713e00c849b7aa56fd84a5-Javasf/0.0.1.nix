{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Javasf";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "";
        url = "";
        synopsis = "A utility to print the SourceFile attribute of one or more Java class files.";
        description = "Installs a javasf executable to print the @SourceFile@ attribute of one or more Java class files.\n\nFor example:\n\n@\n\\> javasf ThisClass.class ThatClass.class\nThisClass.java\nThatClass.java\n@\n\nJava VM Specification 4.7.7 The @SourceFile@ Attribute\n\n<http://java.sun.com/docs/books/jvms/second_edition/html/ClassFile.doc.html#79868>";
        buildType = "Simple";
      };
      components = {
        exes = {
          "javasf" = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-java-classfile
              hsPkgs.binary
              hsPkgs.bytestring
            ];
          };
        };
      };
    }