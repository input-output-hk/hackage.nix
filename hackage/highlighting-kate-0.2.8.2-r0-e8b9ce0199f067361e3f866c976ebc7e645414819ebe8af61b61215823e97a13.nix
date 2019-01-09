{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; executable = false; pcre-light = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "highlighting-kate"; version = "0.2.8.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/highlighting-kate";
      url = "";
      synopsis = "Syntax highlighting";
      description = "highlighting-kate is a syntax highlighting library\nwith support for over one hundred languages. The syntax\nparsers are automatically generated from Kate\nsyntax descriptions (<http://kate-editor.org/>),\nso any syntax supported by Kate can be added.\nAn (optional) command-line program is provided, along\nwith a utility for generating new parsers from Kate\nXML syntax descriptions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([ (hsPkgs.parsec) (hsPkgs.xhtml) ] ++ (if flags.splitbase
          then [ (hsPkgs.base) (hsPkgs.containers) ]
          else [ (hsPkgs.base) ])) ++ (if flags.pcre-light
          then [ (hsPkgs.pcre-light) ]
          else [ (hsPkgs.regex-pcre-builtin) ]);
        };
      exes = {
        "Highlight" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.xhtml)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }