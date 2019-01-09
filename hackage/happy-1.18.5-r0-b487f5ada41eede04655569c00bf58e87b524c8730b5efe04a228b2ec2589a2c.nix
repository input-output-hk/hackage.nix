{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "happy"; version = "1.18.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) Andy Gill, Simon Marlow";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Andy Gill and Simon Marlow";
      homepage = "http://www.haskell.org/happy/";
      url = "";
      synopsis = "Happy is a parser generator for Haskell";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "happy" = {
          depends = [ (hsPkgs.base) (hsPkgs.mtl) ] ++ (if flags.small_base
            then [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.containers) ]
            else [ (hsPkgs.base) ]);
          };
        };
      };
    }