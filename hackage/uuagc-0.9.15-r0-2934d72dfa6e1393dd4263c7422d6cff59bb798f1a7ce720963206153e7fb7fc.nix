{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      compatibility1 = true;
      compatibility2 = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "uuagc";
        version = "0.9.15";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.uulib)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "uuagc" = {
          depends  = ([
            (hsPkgs.haskell98)
            (hsPkgs.uulib)
          ] ++ (if flags.compatibility1
            then [
              (hsPkgs.base)
              (hsPkgs.base)
              (hsPkgs.ghc-prim)
            ]
            else [
              (hsPkgs.base)
            ])) ++ (if flags.compatibility2
            then [
              (hsPkgs.base)
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