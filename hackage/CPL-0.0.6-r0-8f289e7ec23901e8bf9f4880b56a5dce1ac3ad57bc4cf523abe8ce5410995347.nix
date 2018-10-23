{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      readline = false;
      haskeline = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "CPL";
        version = "0.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "An interpreter of Hagino's Categorical Programming Language (CPL).";
      description = "An interpreter of Hagino's Categorical Programming Language (CPL).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cpl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.parsec)
          ] ++ (if flags.readline
            then [ (hsPkgs.readline) ]
            else pkgs.lib.optional (flags.haskeline) (hsPkgs.haskeline));
        };
      };
    };
  }