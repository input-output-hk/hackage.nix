{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      usebytestrings = true;
      separatesyb = true;
      allwarnings = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "language-c";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "LICENSE";
      maintainer = "benedikt.huber@gmail.com";
      author = "AUTHORS";
      homepage = "http://visq.github.io/language-c/";
      url = "";
      synopsis = "Analysis and generation of C code";
      description = "Language C is a haskell library for the analysis and generation of C code.\nIt features a complete, well tested parser and pretty printer for all of C99 and a large\nset of C11 and clang/GNU extensions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.filepath)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.pretty)
          ] ++ (if flags.separatesyb
            then [
              (hsPkgs.base)
              (hsPkgs.syb)
            ]
            else [ (hsPkgs.base) ])
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (flags.usebytestrings) (hsPkgs.bytestring);
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
      };
      tests = {
        "language-c-harness" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.language-c)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }