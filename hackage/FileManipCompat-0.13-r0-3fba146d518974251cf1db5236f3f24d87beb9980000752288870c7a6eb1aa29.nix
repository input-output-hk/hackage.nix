{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "FileManipCompat";
        version = "0.13";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Hartman <thomashartman1@gmail.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://patch-tag.com/tphyahoo/r/tphyahoo/FileManipCompat";
      url = "";
      synopsis = "Port of Find function of FileManip lib for use on windows systems";
      description = "A Haskell library for working with files and directories.\nIncludes code for pattern matching, finding files,\nmodifying file contents, and more.";
      buildType = "Simple";
    };
    components = {
      "FileManipCompat" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.unix-compat)
          (hsPkgs.extensible-exceptions)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }