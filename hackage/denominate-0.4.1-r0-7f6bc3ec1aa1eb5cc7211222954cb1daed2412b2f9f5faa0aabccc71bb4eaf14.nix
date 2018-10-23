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
        name = "denominate";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Calvin Smith";
      maintainer = "cs-haskell@protempore.net";
      author = "Calvin Smith";
      homepage = "http://protempore.net/denominate/";
      url = "";
      synopsis = "Functions supporting bulk file and directory name\nnormalization.";
      description = "Denominate provides a main program for performing bulk\nfile and directory renaming, using a built-in filename\nconverter or user-defined converters.\n\nAdditionally, it provides a module that exposes some\nfunctions related to renaming and name normalization\nthat might be otherwise useful.";
      buildType = "Custom";
    };
    components = {
      "denominate" = {
        depends  = if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.filepath)
          ];
      };
      exes = {
        "denominate" = {
          depends  = if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.directory)
              (hsPkgs.filepath)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.filepath)
            ];
        };
      };
    };
  }