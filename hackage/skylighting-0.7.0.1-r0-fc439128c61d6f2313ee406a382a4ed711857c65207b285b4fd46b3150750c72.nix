{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      system-pcre = false;
      executable = false;
    };
    package = {
      specVersion = "1.22";
      identifier = {
        name = "skylighting";
        version = "0.7.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "(C) 2016 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/skylighting";
      url = "";
      synopsis = "syntax highlighting library";
      description = "Skylighting is a syntax highlighting library with\nsupport for over one hundred languages.  It derives\nits tokenizers from XML syntax definitions used\nby KDE's KSyntaxHighlighting framework, so any\nsyntax supported by that framework can be added.\nAn optional command-line program is provided.\nSkylighting is intended to be the successor to\nhighlighting-kate.\nThis package provides generated syntax modules\nbased on the KDE XML definitions provided by the\n@skylighting-core@ package. As a result this\npackage is licensed under the GPL.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.skylighting-core)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.aeson)
          (hsPkgs.case-insensitive)
          (hsPkgs.attoparsec)
          (hsPkgs.utf8-string)
          (hsPkgs.hxt)
          (hsPkgs.safe)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.containers)
          (hsPkgs.ansi-terminal)
          (hsPkgs.colour)
        ] ++ (if flags.system-pcre
          then [ (hsPkgs.regex-pcre) ]
          else [
            (hsPkgs.regex-pcre-builtin)
          ]);
      };
      exes = {
        "skylighting" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.pretty-show)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-html)
            (hsPkgs.skylighting)
          ];
        };
      };
    };
  }