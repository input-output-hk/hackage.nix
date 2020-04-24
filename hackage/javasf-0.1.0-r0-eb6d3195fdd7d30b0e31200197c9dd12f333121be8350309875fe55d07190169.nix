{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "javasf"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2009-2014 Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "https://github.com/tonymorris/javasf";
      url = "";
      synopsis = "A utility to print the SourceFile attribute of one or more Java class files.";
      description = "Installs a javasf executable to print the @SourceFile@ attribute of one or more Java class files.\n\nFor example:\n\n@\n\\> javasf ThisClass.class ThatClass.class\nThisClass.java\nThatClass.java\n@\n\nJava VM Specification 4.7.7 The @SourceFile@ Attribute\n\n<http://java.sun.com/docs/books/jvms/second_edition/html/ClassFile.doc.html#79868>";
      buildType = "Custom";
      };
    components = {
      exes = {
        "javasf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."language-java-classfile" or ((hsPkgs.pkgs-errors).buildDepError "language-java-classfile"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }