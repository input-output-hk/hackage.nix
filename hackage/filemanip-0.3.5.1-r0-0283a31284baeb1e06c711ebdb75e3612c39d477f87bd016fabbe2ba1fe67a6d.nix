{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "filemanip";
        version = "0.3.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "";
      url = "";
      synopsis = "Expressive file and directory manipulation for Haskell.";
      description = "A Haskell library for working with files and directories.\nIncludes code for pattern matching, finding files,\nmodifying file contents, and more.";
      buildType = "Simple";
    };
    components = {
      "filemanip" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.unix-compat)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
      };
    };
  }