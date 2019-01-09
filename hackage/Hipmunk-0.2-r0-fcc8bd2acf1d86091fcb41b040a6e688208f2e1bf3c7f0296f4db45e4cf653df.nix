{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Hipmunk"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008 Felipe A. Lessa";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell binding for Chipmunk.";
      description = "Chipmunk is a fast, simple, portable, 2D physics engine\n(<http://wiki.slembcke.net/main/published/Chipmunk>).\nThis package contains the Chipmunk rev4 source\n(from <http://chipmunk-physics.googlecode.com/svn/trunk/>)\nand Haskell bindings to all of its functions. It is\ncompletely self-contained.\n\nLicensed under the MIT license (like Chipmunk itself).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ] ++ (pkgs.lib).optionals (flags.small_base) [
          (hsPkgs.array)
          (hsPkgs.containers)
          ];
        libs = [ (pkgs."m") ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      };
    }