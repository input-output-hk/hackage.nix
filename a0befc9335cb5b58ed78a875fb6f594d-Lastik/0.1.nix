{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Lastik";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tony Morris";
      author = "Tony Morris <tmorris@tmorris.net>";
      homepage = "";
      url = "";
      synopsis = "A library for compiling programs in a variety of languages";
      description = "A library for compiling programs in a variety of languages including Java, Scala and C#.";
      buildType = "Simple";
    };
    components = {
      "Lastik" = {
        depends  = if _flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.FileManip)
            (hsPkgs.zip-archive)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.FileManip)
            (hsPkgs.zip-archive)
          ];
      };
    };
  }