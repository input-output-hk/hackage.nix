{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4 = true;
      splitbase = true;
      bytestringinbase = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bytestring-lexing";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 wren ng thornton, 2008--2011 Don Stewart";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton, Don Stewart";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Parse literals efficiently from strict or lazy bytestrings";
      description = "Parse literals efficiently from strict or lazy bytestrings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
        ] ++ (if flags.bytestringinbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ])) ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ]);
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
    };
  }