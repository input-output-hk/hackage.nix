{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      usebytestrings = true;
      separatesyb = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "language-objc";
        version = "0.4.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "LICENSE";
      maintainer = "jwlato@gmail.com";
      author = "AUTHORS";
      homepage = "http://www.tiresiaspress.us/haskell/language-objc";
      url = "";
      synopsis = "Analysis and generation of Objective C code";
      description = "Language-ObjC is a haskell library for the analysis and\ngeneration of Objective C code.\nIt features a complete, well tested parser and pretty printer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.newtype)
          (hsPkgs.pretty)
        ] ++ (if flags.separatesyb
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (flags.usebytestrings) (hsPkgs.bytestring);
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
      };
    };
  }