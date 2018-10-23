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
        name = "JuicyPixels-blp";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2018 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "http://github.com/NCrashed/JuicyPixels-blp#readme";
      url = "";
      synopsis = "BLP format decoder/encoder over JuicyPixels library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "JuicyPixels-blp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.JuicyPixels)
          (hsPkgs.text-show)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "blp2any" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.JuicyPixels)
            (hsPkgs.JuicyPixels-blp)
            (hsPkgs.optparse-simple)
            (hsPkgs.text-show)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }