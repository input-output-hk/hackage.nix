{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hakyll-convert"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kow <eric.kow@gmail.com>";
      author = "Eric Kow <eric.kow@gmail.com>";
      homepage = "http://github.com/kowey/hakyll-convert";
      url = "";
      synopsis = "Convert from other blog engines to Hakyll.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.feed)
          (hsPkgs.hakyll)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.xml)
          ];
        };
      exes = {
        "hakyll-convert" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.feed)
            (hsPkgs.filepath)
            (hsPkgs.hakyll-convert)
            (hsPkgs.text)
            (hsPkgs.xml)
            ];
          };
        "hakyll-convert-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hakyll)
            (hsPkgs.hakyll-convert)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }