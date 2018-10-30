{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "FileManip";
        version = "0.3.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "";
      url = "";
      synopsis = "Expressive file and directory manipulation for Haskell.";
      description = "/DEPRECATED/.  Use the @filemanip@ package (all lowercase)\ninstead.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.extensible-exceptions)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.extensible-exceptions)
          ];
      };
    };
  }