{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
      executable = false;
      pcre-light = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "highlighting-kate";
        version = "0.5.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/highlighting-kate";
      url = "";
      synopsis = "Syntax highlighting";
      description = "highlighting-kate is a syntax highlighting library\nwith support for nearly one hundred languages. The syntax\nparsers are automatically generated from Kate\nsyntax descriptions (<http://kate-editor.org/>),\nso any syntax supported by Kate can be added.\nAn (optional) command-line program is provided, along\nwith a utility for generating new parsers from Kate\nXML syntax descriptions.";
      buildType = "Simple";
    };
    components = {
      "highlighting-kate" = {
        depends  = ([
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.blaze-html)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
          ]
          else [
            (hsPkgs.base)
          ])) ++ (if _flags.pcre-light
          then [ (hsPkgs.pcre-light) ]
          else [
            (hsPkgs.regex-pcre-builtin)
          ]);
      };
      exes = {
        "Highlight" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.blaze-html)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }