{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "sourcemap";
        version = "0.1.6";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Implementation of source maps as proposed by Google and Mozilla.";
      description = "Implementation of source maps, revision 3, proposed by Google and Mozilla here\n<https://wiki.mozilla.org/DevTools/Features/SourceMap> and here\n<https://docs.google.com/document/d/1U1RGAehQwRypUTovF1KRlpiOFze0b-_2gc6fAH0KY0k/edit>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.attoparsec)
          (hsPkgs.process)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
        ];
      };
      tests = {
        "nodejs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sourcemap)
            (hsPkgs.process)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      benchmarks = {
        "vlq" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.random)
          ];
        };
      };
    };
  }