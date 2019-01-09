{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "loris"; version = "0.3.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "John W. Lato, jwlato@gmail.com";
      author = "John W. Lato, jwlato@gmail.com";
      homepage = "http://www.tiresiaspress.us/haskell/loris";
      url = "";
      synopsis = "interface to Loris API";
      description = "Haskell interface to the Loris toolkit,\n'http://sourceforge.net/projects/loris/'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.vector) ];
        libs = [ (pkgs."loris") ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }