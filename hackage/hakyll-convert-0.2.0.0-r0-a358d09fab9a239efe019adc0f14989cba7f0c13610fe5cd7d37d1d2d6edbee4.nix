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
        name = "hakyll-convert";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Batischev <eual.jp@gmail.com>";
      author = "Eric Kow <eric.kow@gmail.com>, Alexander Batischev <eual.jp@gmail.com>";
      homepage = "http://github.com/Minoru/hakyll-convert";
      url = "";
      synopsis = "Convert from other blog engines to Hakyll.";
      description = "WordPress and Blogger only let one export posts in\na limited number of formats, none of which are supported\nby Hakyll. @hakyll-convert@ is created to bridge this gap,\nproviding a way to turn other platform's datadumps into\na set of files Hakyll understands.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.feed)
          (hsPkgs.filepath)
          (hsPkgs.hakyll)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.xml)
        ];
      };
      exes = {
        "hakyll-convert" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.feed)
            (hsPkgs.filepath)
            (hsPkgs.hakyll-convert)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.xml)
          ];
        };
      };
    };
  }