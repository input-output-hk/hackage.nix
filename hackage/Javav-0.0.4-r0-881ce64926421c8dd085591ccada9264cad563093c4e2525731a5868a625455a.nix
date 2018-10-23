{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Javav";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Morris";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "";
      url = "";
      synopsis = "A utility to print the target version of Java class files.";
      description = "Installs a javav executable to print the target version of one or more Java class files.\n\nFor example:\n\n@\n\\> javav ThisClass.class ThatClass.class\n1.6 (50.0 0x32) ThisClass.class\n1.5 (49.0 0x31) ThatClass.class\n@\n\nJava VM Specification 4.1 The @ClassFile@ Structure\n\n<http://java.sun.com/docs/books/jvms/second_edition/html/ClassFile.doc.html#74353>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "javav" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }