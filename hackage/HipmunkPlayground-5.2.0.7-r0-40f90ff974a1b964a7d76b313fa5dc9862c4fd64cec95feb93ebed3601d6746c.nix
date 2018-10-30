{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HipmunkPlayground";
        version = "5.2.0.7";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "http://patch-tag.com/r/felipe/hipmunkplayground/home";
      url = "";
      synopsis = "A playground for testing Hipmunk.";
      description = "This is a simple OpenGL program that allows you to see\nsome of Hipmunk's functions in action.\n\nNew in version 5.2.0.6:\n\n* Accept OpenGL 2.5 as well.  Thanks again, Sergei Trofimovich!\n\nNew in version 5.2.0.5:\n\n* Accept GLFW 0.5 as well.\n\nNew in version 5.2.0.4:\n\n* Now buildable on GHC 7.0.  Thanks, Sergei Trofimovich.\n\nNew in version 5.2.0.3:\n\n* Correctly handle window resizes.\n\nNew in version 5.2.0.2:\n\n* Add repo URL to cabal file.\n\nNew in version 5.2.0.1:\n\n* Show collision points.\n\nLicensed under the MIT license (like Hipmunk itself).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "HipmunkPlayground" = {
          depends  = [
            (hsPkgs.Hipmunk)
            (hsPkgs.transformers)
            (hsPkgs.OpenGL)
            (hsPkgs.StateVar)
            (hsPkgs.GLFW)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }