{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Javasf"; version = "0.0.1"; };
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
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-java-classfile" or (errorHandler.buildDepError "language-java-classfile"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }