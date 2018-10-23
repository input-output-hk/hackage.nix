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
        name = "Lastik";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tony Morris";
      author = "Tony Morris <code@tmorris.net>";
      homepage = "http://code.google.com/p/lastik";
      url = "";
      synopsis = "A library for compiling programs in a variety of languages";
      description = "A library for compiling programs in a variety of languages including Java, Scala and C#.";
      buildType = "Simple";
    };
    components = {
      "Lastik" = {
        depends  = if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.zip-archive)
            (hsPkgs.pureMD5)
            (hsPkgs.SHA)
            (hsPkgs.containers)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.zip-archive)
            (hsPkgs.pureMD5)
            (hsPkgs.SHA)
            (hsPkgs.containers)
          ];
      };
    };
  }