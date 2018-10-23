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
        name = "ureader";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam T.";
      maintainer = "Sam T. <pxqr.sta@gmail.com>";
      author = "Sam T.";
      homepage = "https://github.com/pxqr/ureader";
      url = "";
      synopsis = "Minimalistic CLI RSS reader.";
      description = "`ureader` is minimalistic command line RSS reader with unicode\nand color support. Everything it does is fetch RSS documents,\nmerge them according to specified options, format and flush\nresulting feed to stdout. So `ureader` could be used with\npagers like `more(1)` or in linux terminal.\n\n[/Release Notes/]\n\n* /0.1.0.0:/ Initial version.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ureader" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.implicit-params)
            (hsPkgs.data-default)
            (hsPkgs.async)
            (hsPkgs.parallel-io)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.network)
            (hsPkgs.curl)
            (hsPkgs.download-curl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.optparse-applicative)
            (hsPkgs.terminal-size)
            (hsPkgs.xml)
            (hsPkgs.feed)
            (hsPkgs.tagsoup)
          ];
        };
      };
    };
  }