{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "htaut"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright, 2016 Junyoung Clare Jang";
      maintainer = "jjc9310@gmail.com";
      author = "Junyoung Clare Jang";
      homepage = "https://github.com/ailrun/htaut#readme";
      url = "";
      synopsis = "Tautology Proving Logic in Haskell";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }