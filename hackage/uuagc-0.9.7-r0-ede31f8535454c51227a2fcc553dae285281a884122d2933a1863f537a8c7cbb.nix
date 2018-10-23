{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "uuagc";
        version = "0.9.7";
      };
      license = "LicenseRef-GPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Attribute Grammar System of Universiteit Utrecht";
      description = "Generates Haskell files from an attribute grammar specification";
      buildType = "Simple";
    };
    components = {
      exes = {
        "uuagc" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.uulib)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.directory)
              (hsPkgs.array)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }