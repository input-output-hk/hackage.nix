{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "snaplet-css-min";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Timothy Jones";
      maintainer = "Timothy Jones <git@zmthy.io>";
      author = "Timothy Jones";
      homepage = "https://github.com/zmthy/snaplet-css-min";
      url = "";
      synopsis = "A Snaplet for CSS minification";
      description = "A Snaplet for minifying and caching CSS files.\n\nNest this Snaplet inside your own, and place your CSS files in\n@snaplets/css-min@.\n\nThe minifier just parses and renders the contents of the files with\n@css-text@, so the minification is not complete. It will remove most\nwhitespace, though.";
      buildType = "Simple";
    };
    components = {
      "snaplet-css-min" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.css-text)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }