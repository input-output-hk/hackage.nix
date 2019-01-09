{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "regexpr-symbolic"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martin.sulzmann@gmail.com";
      author = "Martin Sulzmann";
      homepage = "http://sulzmann.blogspot.com/2008/12/equality-containment-and-intersection.html";
      url = "";
      synopsis = "Regular expressions via symbolic manipulation";
      description = "Equality, containment, intersection among regular expressions via symbolic manipulation";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }