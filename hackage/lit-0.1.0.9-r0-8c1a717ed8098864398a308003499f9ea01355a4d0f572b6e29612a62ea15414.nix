{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lit";
        version = "0.1.0.9";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "cdosborn@uw.edu";
      author = "cdosborn";
      homepage = "https://github.com/cdosborn/lit";
      url = "";
      synopsis = "A simple tool for literate programming";
      description = "lit has a minimal syntax for implementing literate\nprogramming. It generates both HTML and the native\nsource code.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.unordered-containers)
            (hsPkgs.cheapskate)
            (hsPkgs.blaze-markup)
            (hsPkgs.blaze-html)
            (hsPkgs.highlighting-kate)
            (hsPkgs.time)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }