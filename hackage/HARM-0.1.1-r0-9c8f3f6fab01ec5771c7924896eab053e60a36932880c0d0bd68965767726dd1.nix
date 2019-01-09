{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "HARM"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Alex Mason (axman6@gmail.com)";
      author = "Jeffrey A. Meunier (and Alex Mason)";
      homepage = "http://www.engr.uconn.edu/~jeffm/Classes/CSE240-Spring-2001/Lectures/index.html";
      url = "";
      synopsis = "A simple ARM emulator in haskell";
      description = "A simple ARM virtual machine designed for teaching assembly";
      buildType = "Simple";
      };
    components = {
      exes = {
        "runarm" = { depends = [ (hsPkgs.base) ]; };
        "dbgarm" = { depends = [ (hsPkgs.base) (hsPkgs.array) ]; };
        };
      };
    }