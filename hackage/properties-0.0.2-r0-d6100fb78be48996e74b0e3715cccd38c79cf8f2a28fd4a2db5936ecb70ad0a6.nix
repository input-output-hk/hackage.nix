{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "properties"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "check quickCheck properties in real time.";
      description = "Test.Properties is flexible and readable way of codifing and executing assertions.\nThe properties can be defined right within the class or the code for which the\nproperties apply.\n\nInstead of testing properties with automatically generate values in a separate\ntest program,this package permits to test them on the fly while the real application run,\nwith the data produced within. So somehow it unites the readability of\nQuickCheck and the flexibility of assert.  It is simple and straighforward\nBut is by no means perfect. no statistics and so on. Just trace messages are\nsent.\n\nThe primary purpose of this package was to define class properties\nand to check their instances. The properties can be defined within a class.\nso no additional exports are necessary. checking instaces can be done within\nthe instance declarations. But it can be used anywhere assertions\nare used. It can be attached to arbitrary piece of code for which\nthe property group holds. The defined properties can be used for casual\ndebugging.\n\nThe package includes  complete examples.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }