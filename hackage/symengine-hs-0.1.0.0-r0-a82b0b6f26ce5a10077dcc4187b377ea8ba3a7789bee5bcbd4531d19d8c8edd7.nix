{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "symengine-hs";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Siddharth Bhat";
      maintainer = "siddu.druid@gmail.com";
      author = "Siddharth Bhat";
      homepage = "http://github.com/bollu/symengine.hs#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "symengine-hs-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.symengine-hs)
          ];
          libs = [
            (pkgs."symengine")
            (pkgs."stdc++")
            (pkgs."gmpxx")
            (pkgs."gmp")
          ];
        };
      };
      tests = {
        "symengine-hs-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.symengine-hs)
          ];
          libs = [
            (pkgs."symengine")
            (pkgs."stdc++")
            (pkgs."gmpxx")
            (pkgs."gmp")
          ];
        };
      };
    };
  }