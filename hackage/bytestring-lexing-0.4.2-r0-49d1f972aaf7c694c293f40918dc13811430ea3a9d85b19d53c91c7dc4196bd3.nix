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
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012--2013 wren ng thornton, 2008--2011 Don Stewart";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton, Don Stewart";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Parse and produce literals efficiently from strict or lazy bytestrings.";
      description = "Parse and produce literals efficiently from strict or lazy bytestrings.\n\nSome benchmarks for this package can be found at:\n<http://community.haskell.org/~wren/bytestring-lexing/test/bench/html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
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